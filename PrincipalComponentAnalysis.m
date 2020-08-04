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
## @deftypefn {} {@var{retval} =} PrincipalComponentAnalysis (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: varun <varun@LAPTOP-KJGDRIM7>
## Created: 2020-08-04

function NewX = PrincipalComponentAnalysis (X)
  m=size(X,1)
  r=size(X,2)
  Sigma=(1/m)*X'*X
  Sigma
  [U,S,V]=svd(Sigma);
  a=sum(sum(S))
  Summation=0;
  
  
  for k=1:m
    Summation=Summation+S(k,k)
    ratio=Summation/a
    check=1-ratio
    if(check<=0.01)
    slice=k;
    k
    break
    end
  
  end
  Ureduced=U(:,1:k)
  ReducedVal=Ureduced'*X;
  NewX=ReducedVal';
  
  
endfunction
