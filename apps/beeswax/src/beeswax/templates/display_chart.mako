## Licensed to Cloudera, Inc. under one
## or more contributor license agreements.  See the NOTICE file
## distributed with this work for additional information
## regarding copyright ownership.  Cloudera, Inc. licenses this file
## to you under the Apache License, Version 2.0 (the
## "License"); you may not use this file except in compliance
## with the License.  You may obtain a copy of the License at
##
##     http://www.apache.org/licenses/LICENSE-2.0
##
## Unless required by applicable law or agreed to in writing, software
## distributed under the License is distributed on an "AS IS" BASIS,
## WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
## See the License for the specific language governing permissions and
## limitations under the License.

<%! from django.template.defaultfilters import filesizeformat %>

<%!
from desktop.lib.view_util import big_filesizeformat as filesizeformat
import simplejson as json
import datetime
import time
from desktop.lib.django_util import humanize_duration
%>

<%namespace name="wrappers" file="header_footer.mako" />
<%namespace name="util" file="util.mako" />
${wrappers.head("Beeswax: Charting results of query: ", section='query')}

<div data-filters="LineChart" data-chart-data="table" data-chart-x="x-axis" data-chart-y="y-axis" data-chart-series="${json.dumps(['Col2'])}">
  <table>
<thead>
<tr>
<th>x-axis</th>
<th>Col2</th>
</tr>
</thead>
% for row in results.data:
  <tr>
    % for column in row.split('\t'):
    <td>${column}</td>
    % endfor
  </tr>
% endfor
 </table>
${wrappers.foot()}
