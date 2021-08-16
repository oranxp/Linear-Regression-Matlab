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
## @deftypefn {} {@var{retval} =} computeErrors (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Oran Ofzer, Id 205633423
## Created: 2020-04-30

function [Errors] = computeErrors (Data, Y, Hypothesis)
  m = size(Data,1);
  m1 = size(Y,1);
  if m == m1 % make sure both matrix and vector have same amount of rows.
   Errors = [1:m]';
   for i = 1 : m
     Errors(i) = predictValue(Data(i,:),Hypothesis) - Y(i);
    endfor 
  endif
endfunction
