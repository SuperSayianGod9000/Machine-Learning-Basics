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
## @deftypefn {} {@var{retval} =} neuralnetworks (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: varun <varun@LAPTOP-KJGDRIM7>
## Created: 2020-07-22

function hypothesis = NeuralNetworks (X,Y,iter,epsilon)
  Theta1=rand(3,3)*(2*epsilon)-epsilon
  Theta2=rand(1,3)*(2*epsilon)-epsilon
  
  a1=X'
  for i=1:iter
  z2=Theta1*a1
  a2=(1+exp(-z2)).^-1
  z3=Theta2*a2
  a3=(1+exp(-z3)).^-1
  error_three=a3-Y
  
  error_two=(Theta2'*error_three).*(a2).*(1-a2)
  Theta2=Theta2-(error_three*a2')
  Theta1=Theta1-(error_two*a1')
  end
  
  
  hypothesis=a3

endfunction
