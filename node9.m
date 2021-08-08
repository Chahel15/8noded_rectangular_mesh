function [coordinates] = node9(L,b,nx,ny)
% nx = number of elements along the X axis
% ny = number of elements along the Y axis
% L = Length of plate
% b = breadth of plate
ne = nx*ny; % total number of elements 
nne = 8; % no. of nodes per element
nnx = (2*nx)+1; % no. of nodes along x axis
nny = (2*ny)+1; %no. of nodes along Y axis
Nx = linspace(0,L,nnx); 
Ny = linspace(0,b,nny);  %discretizing from 0 to b with nny points
[xx yy] = meshgrid(Nx,Ny);
coordinates = [xx(:) yy(:)];
 x = coordinates(:,1);
 y = coordinates(:,2);
 plot(x,y,'b.','MarkerSize',10); % Plotting the nodes
 c =1;
 plotting = zeros((nnx*nny),2);
  while c<=(nnx*nny)
      for i = c:1:(c+nny-1)
          for j = 1:1:2
             plotting(i,j) = coordinates(i,j);
          end
      end
     c = i+nny+1;
  end
 xline(plotting(:,1)) 
 yline(plotting(1:2:nny,2))
end