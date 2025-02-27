% This file is part of the HörTech Open Master Hearing Aid (openMHA)
% Copyright © 2024 Hörzentrum Oldenburg gGmbH
%
% openMHA is free software: you can redistribute it and/or modify
% it under the terms of the GNU Affero General Public License as published by
% the Free Software Foundation, version 3 of the License.
%
% openMHA is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU Affero General Public License, version 3 for more details.
%
% You should have received a copy of the GNU Affero General Public License,
% version 3 along with openMHA.  If not, see <http://www.gnu.org/licenses/>.


% Function for converting slope s of exponential spread of excitation (in 
% dB/mm) to length constant lambda (in m), based on Bingabr et al. (2008):
% 
% Bingabr, M., Espinoza-Varas, B., & Loizou, P. C. (2008). Simulating the
% effect of spread of excitation in cochlear implants. Hearing Research,
% 241, 73-79. https://doi.org/10.1016/j.heares.2008.04.012
% 
% Usage:
% lambda = slope2lambda(s)
% 
% Input parameter:
% s       slope of exponential spread of excitation / dB/mm
% 
% Output parameter:
% lambda  length constant of the exponential decay function / 1/m
% 
% -------------------------------------------------------------------------

function lambda = slope2lambda(s)
    lambda = 20/(s * log(10));
    lambda = lambda/1000;  % mm to m
end
