clear all

folder_stats_json='stats';
%% t-test example
clear test
load stockreturns
x = stocks(:,3);
[test.h,test.p,test.ci,test.stats] = ttest(x);
% save the test as json
testname='ttest_stock';
encodedStats=jsonencode(test);
fid = fopen([folder_stats_json '\' testname '.json'],'w');
fprintf(fid,'%s',encodedStats);
fclose(fid);

%% anova example
clear test
load hogg
hogg
[test.p,test.tbl,test.stats] = anova1(hogg,[],'off');

% save the test as json
testname='anova_hogg';
encodedStats=jsonencode(test);
fid = fopen([folder_stats_json '\' testname '.json'],'w');
fprintf(fid,'%s',encodedStats);
fclose(fid);

%% anova example 2
clear test
load hogg
hogg
[test.p,tbl,test.stats] = anova1(hogg,[],'off');

% save the test as json
testname='anova_hogg3';
encodedStats=jsonencode(test);
fid = fopen([folder_stats_json '\' testname '.json'],'w');
fprintf(fid,'%s',encodedStats);
fclose(fid);

