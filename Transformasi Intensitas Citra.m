%citra berwarna
colour = imread('fotoku.jpg');
figure(), imshow(colour)

%citra keabuan dengan menggunakan nilai rata-rata
I_gray_average = (colour(:,:,1) + colour(:,:,2) + colour(:,:,3)) / 3;
figure(), imshow(I_gray_average)

%citra keabuan dengan menggunakan nilai konstanta
I_gray_contrast = colour(:,:,1) * 0.4 + colour(:,:,2) * 0.32 + colour(:,:,3) * 0.28;
figure(), imshow(I_gray_contrast)

%citra biner
nilai_ambang = 120;
[kolom , baris] = size(I_gray_contrast);
I_gray_biner = zeros(kolom,baris);

for x = 1 : kolom
    for y = 1 : baris
        if(I_gray_contrast(x,y) > nilai_ambang)
            I_gray_biner(x,y) = 1;
        else
            I_gray_biner(x,y) = 0;
        end
    end
end
figure(), imshow(I_gray_biner)

%pengaturan contrast
contrast = I_gray_contrast * 1.2;
figure(), imshow(contrast)

%pengaturan brightness
brightness = I_gray_contrast + 20;
figure(), imshow(brightness)
