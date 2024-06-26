clc
close all
clear all
N=100;
[x,y]=meshgrid(0:9/N:9,0:14/N:14);
v(N+1,N+1)=0;
for i=16:86
    v(i,1)=10;
end
for i=16:86
    v(i,101)=10;
end
for i=1:101
    v(86,i)=10;
end
for i=1:101
    v(16,i)=10;
end
for i=35:57
    v(i,21)=10;
end
for i=1:22
    v(36,i)=10;
end
for i=1:22
    v(56,i)=10;
end
for i=79:90
    v(1,i)=10;
end
for i=79:90
    v(101,i)=10;
end
for i=1:16
    v(i,90)=10;
end
for i=86:101
    v(i,90)=10;
end
for i=86:101
    v(i,79)=10;
end
for i=1:16
    v(i,79)=10;
end
for i=79:90
    v(16,i)=0;
end
for i=79:90
    v(86,i)=0;
end
for i=35:57
    v(i,1)=0;
end
n=10000;
for i=1:n
    for ix=17:85
        for iy=77:100
            v(ix,iy)=(v(ix-1,iy)+v(ix+1,iy)+v(ix,iy+1)+v(ix,iy-1))/4;
        end
    end
end
for i=1:n
    for ix=17:35
        for iy=2:100
            v(ix,iy)=(v(ix-1,iy)+v(ix+1,iy)+v(ix,iy+1)+v(ix,iy-1))/4;
        end
    end
end
for i=1:n
    for ix=57:85
        for iy=2:100
            v(ix,iy)=(v(ix-1,iy)+v(ix+1,iy)+v(ix,iy+1)+v(ix,iy-1))/4;
        end
    end
end
for i=1:n
    for ix=17:85
        for iy=22:44
            v(ix,iy)=(v(ix-1,iy)+v(ix+1,iy)+v(ix,iy+1)+v(ix,iy-1))/4;
        end
    end
end
for i=1:n
    for ix=2:17
        for iy=80:89
            v(ix,iy)=(v(ix-1,iy)+v(ix+1,iy)+v(ix,iy+1)+v(ix,iy-1))/4;
        end
    end
end
for i=1:n
    for ix=85:100
        for iy=80:89
            v(ix,iy)=(v(ix-1,iy)+v(ix+1,iy)+v(ix,iy+1)+v(ix,iy-1))/4;
        end
    end
end
figure(1)
contour(y,x,v);
xlabel('x(m)');
ylabel('y(m)');
figure(2)
mesh(y,x,v);
xlabel('x(m)');
ylabel('y(m)');
zlabel('V(Volt)');