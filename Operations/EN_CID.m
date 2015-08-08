function out = EN_CID(y)
% EN_CID    Simple complexity measure of a time series.
%
% Estimates of 'complexity' of a time series as the stretched-out length of the
% lines resulting from a line-graph of the time series.
%
% cf. Batista, G. E. A. P. A., Keogh, E. J., Tataw, O. M. & de Souza, V. M. A.
% CID: an efficient complexity-invariant distance for time series. Data Min.
% Knowl. Disc. 28, 634–669 (2014).
%
%---INPUTS:
%
% y, the input time series

% ------------------------------------------------------------------------------
% Copyright (C) 2015, Ben D. Fulcher <ben.d.fulcher@gmail.com>,
% <http://www.benfulcher.com>
%
% If you use this code for your research, please cite:
% B. D. Fulcher, M. A. Little, N. S. Jones, "Highly comparative time-series
% analysis: the empirical structure of time series and their methods",
% J. Roy. Soc. Interface 10(83) 20130048 (2010). DOI: 10.1098/rsif.2013.0048
%
% This function is free software: you can redistribute it and/or modify it under
% the terms of the GNU General Public License as published by the Free Software
% Foundation, either version 3 of the License, or (at your option) any later
% version.
%
% This program is distributed in the hope that it will be useful, but WITHOUT
% ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
% FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
% details.
%
% You should have received a copy of the GNU General Public License along with
% this program. If not, see <http://www.gnu.org/licenses/>.
% ------------------------------------------------------------------------------

% Original definition (in Table 2 of paper cited above)
out.CE1 = sqrt(mean(diff(y).^2)); % sum -> mean to deal with non-equal time-series lengths

% Definition corresponding to the line segment example in Fig. 9 of the paper
% cited above (using pythagoras's theorum):
out.CE2 = mean(sqrt(1+diff(y).^2));

end
