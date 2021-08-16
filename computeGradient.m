## Copyright (C) 2020 PC
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
## @deftypefn {} {@var{retval} =} computeGradient (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Oran Ofzer, Id 205633423
## Created: 2020-04-30

function  [Gradient] = computeGradient(Data, Errors)
    m = size(Data,1);
    n = size(Data,2);
    Gradient = [1:n]; 
    for j = 1 : n
      sum = 0;
      for i = 1 : m
        sum = sum + Data(i,j)*Errors(i); % sum multiplication of all rows of feature j
      endfor
      Gradient(j) = (1/m)*sum; % using formula and setting to gradient-j and repeat.
      endfor;
endfunction
