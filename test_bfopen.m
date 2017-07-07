function data = test_bfopen(file)

bfCheckJavaPath();

% bfopen-start
data = bfopen(file);
% bfopen-end

% Reading Images
% accessing-planes-start
seriesCount = size(data, 1);
series1 = data{1, 1};
metadataList = data{1, 2};
% etc
series1_planeCount = size(series1, 1);
series1_plane1 = series1{1, 1};
series1_label1 = series1{1, 2};
series1_plane2 = series1{2, 1};
series1_label2 = series1{2, 2};
series1_plane3 = series1{3, 1};
series1_label3 = series1{3, 2};
% accessing-planes-end

%Displaying images
% displaying-images-start
series1_colorMaps = data{1, 3};
figure('Name', series1_label1);
if (isempty(series1_colorMaps{1}))
  colormap(gray);
else
  colormap(series1_colorMaps{1}(1,:));
end
imagesc(series1_plane1);
% displaying-images-end

end
