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
## @deftypefn {} {@var{retval} =} loadData (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author:  Oran Ofzer, Id 205633423
## Created: 2020-04-30

function [D Y] = loadData(filename)
  A = load(filename);
  D = A(:,1:end-1); % Extract all columns (Features) from matrix A to matrix D.
  Y = A(:,end); % Extract Labels column to matrix Y. 
  x = ['read ' ,num2str(size(A,1)), ' rows'];
  disp(x);
  x1 = D(:,1);
  x2 = D(:,2);
  figure(1)
  plot(x1,Y,'o'); 
  figure(2)
  plot(x2,Y,'o');
endfunction