function Area_slope_calc_fgui_ArcGIS(FlowFile,AreaFile,SlopeFile,AlphaFile,ConsFile)
% Area-Slope equation calculator
% By Sagy Cohen (sagy.cohen@uon.edu.au)
% Calculates the coefficient and intersect (alpha and constant respectively) for each pixel at a catchment
% Slope=constant*Area^alpha
% Requires 3 input files: Flow direction (ArcGIS 8D), Contributing Area and topographic Slope.
% For more details read: 
% Cohen, S., G. Willgoose, and G. Hancock (2008), A methodology for calculating the spatial distribution of the area-slope equation and the hypsometric integral within a catchment,
% Journal of Geophysical Research, 113, F03027. 



% Read input files
newData1 = importdata(AreaFile, ' ', 6);
vars = fieldnames(newData1);
for i = 1:length(vars)
    assignin('base', vars{i}, newData1.(vars{i}));
end
header=char(newData1.textdata);
area=newData1.data+1;
slope=single(arcgridread(SlopeFile));
flow_dir=int16(arcgridread(FlowFile));


% ArcGIS flow direction
dir1=(flow_dir==1);
dir2=(flow_dir==128);
dir3=(flow_dir==64);
dir4=(flow_dir==32);
dir5=(flow_dir==16);
dir6=(flow_dir==8);
dir7=(flow_dir==4);
dir8=(flow_dir==2);


%TauDEM flowdir
%dir1=(flow_dir==1);
%dir2=(flow_dir==2);
%dir3=(flow_dir==3);
%dir4=(flow_dir==4);
%dir5=(flow_dir==5);
%dir6=(flow_dir==6);
%dir7=(flow_dir==7);
%dir8=(flow_dir==8);

% Get the area value of the pixel down stream
area1=circshift(area,[0 -1]);area1(:,end)=NaN;
area2=circshift(area,[1 -1]);area2(1,end)=NaN;
area3=circshift(area,[1 0]);area3(1,:)=NaN;
area4=circshift(area,[1 1]);area4(1,1)=NaN;
area5=circshift(area,[0 1]);area5(:,1)=NaN;
area6=circshift(area,[-1 1]);area6(end,1)=NaN;
area7=circshift(area,[-1 0]);area7(end,:)=NaN;
area8=circshift(area,[-1 -1]);area8(end,end)=NaN;

carea1=area1.*dir1;
carea2=area2.*dir2;
carea3=area3.*dir3;
carea4=area4.*dir4;
carea5=area5.*dir5;
carea6=area6.*dir6;
carea7=area7.*dir7;
carea8=area8.*dir8;
carea_all=carea1+carea2+carea3+carea4+carea5+carea6+carea7+carea8;

% Get the slope value of the pixel down stream
slope1=circshift(slope,[0 -1]);slope1(:,end)=NaN;
slope2=circshift(slope,[1 -1]);slope2(1,end)=NaN;
slope3=circshift(slope,[1 0]);slope3(1,:)=NaN;
slope4=circshift(slope,[1 1]);slope4(1,1)=NaN;
slope5=circshift(slope,[0 1]);slope5(:,1)=NaN;
slope6=circshift(slope,[-1 1]);slope6(end,1)=NaN;
slope7=circshift(slope,[-1 0]);slope7(end,:)=NaN;
slope8=circshift(slope,[-1 -1]);slope8(end,end)=NaN;

cslope1=slope1.*dir1;
cslope2=slope2.*dir2;
cslope3=slope3.*dir3;
cslope4=slope4.*dir4;
cslope5=slope5.*dir5;
cslope6=slope6.*dir6;
cslope7=slope7.*dir7;
cslope8=slope8.*dir8;
cslope_all=cslope1+cslope2+cslope3+cslope4+cslope5+cslope6+cslope7+cslope8;

%Calculating alpha
logarea=log10(area./carea_all);
logslope=log10(slope./cslope_all);
alpha=logslope./logarea;
alpha(alpha>2)=2;
alpha(alpha<-2)=-2;
%alpha(alpha==0)=-9999;
alpha(isnan(alpha))=-9999;

% Calculating constant
cons=(slope./(area.^alpha));
cons(cons>2)=2;
cons(cons<-2)=-2;
%cons(cons==0)=-9999;
cons(isnan(cons))=-9999;
% write output
dlmwrite(AlphaFile, header,'%F');
dlmwrite(AlphaFile, alpha,'-append','roffset', 0, 'delimiter', ' ');
dlmwrite(ConsFile', header,'%F');
dlmwrite(ConsFile, cons,'-append','roffset', 0, 'delimiter', ' ');







