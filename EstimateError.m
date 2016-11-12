function error = EstimateError(N, timeDisc, TempEx, TempNum)

SciFormat = '%10.5e';
TempExForComp = TempEx(timeDisc);
error = sqrt(sum((TempExForComp - TempNum).^2)) / N;
result = [char(13) 'Error: ' num2str(error, SciFormat) char(13)];

disp(result);
