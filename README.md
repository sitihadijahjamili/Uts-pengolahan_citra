# Uts-pengolahan_citra
Konversi RGB

Desain awal 

![image](https://user-images.githubusercontent.com/56400200/117002773-2f524400-ad0e-11eb-974e-b4fbb4a0311a.png)

Hasil :

![image](https://user-images.githubusercontent.com/56400200/117002808-3b3e0600-ad0e-11eb-800b-961406953c78.png)


Codingan :

[filename, pathname] = uigetfile({'*.jpg','*.png'});
gambar = imread([pathname, filename]);
 
axes(handles.axes1);
imshow(gambar);
 
R = gambar(:,:,1);
G = gambar(:,:,2);
B = gambar(:,:,3);
 
Red = cat(3,R,G*0,B*0);
Green = cat(3,R*0,G,B*0);
Blue = cat(3,R*0,G*0,B);
 
axes(handles.axes2);
imshow(Red);
 
axes(handles.axes3);
imshow(Green);
 
axes(handles.axes4);
imshow(Blue);

