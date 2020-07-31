## Copyright (C) 2020 varun
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} KMean (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: varun <varun@LAPTOP-KJGDRIM7>
## Created: 2020-07-31

function indices = KMean (X)
  iter=100;
  K=4;
  m=size(X,1);
  indices=zeros(m,1)
  centroid = zeros(K,size(X,2)); 
  randidx = randperm(size(X,1));
  centroid = X(randidx(1:K), :)
  for n=1:iter
  for i=1:m
    k=1;
    MinDist=sum((X(i,:)-centroid(1,:)).^2);
    for j=2:K
      Dist=sum((X(i,:)-centroid(j,:)).^2)
      if(Dist<MinDist)
        MinDist=Dist;
        k=j
      end
      
    end
    
    indices(i,1)=k;
    
   end
   TestX=[X,indices]
   
   for i=1:K
     Summation=zeros(1,3);
     count=0;
     for j=1:m
       
       if(TestX(j,4)==i)
        Summation=Summation+X(j,:);
        count=count+1;
      end
    end
    if(count>0)
    centroid(i,:)=Summation/count;
    end
  end
end

  
  
  
     
      
     
    

endfunction
