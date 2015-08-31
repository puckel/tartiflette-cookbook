#
# Cookbook Name:: tartiflette
# Attributes:: default
#
# Copyright 2010-2015, Chef Software, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Ingredients for 6 serves (in gram)

default['tartiflette']['ingredient']['potatoes'] = 1500
# Farmer's cheese only !!!
default['tartiflette']['ingredient']['reblochon'] = 2
default['tartiflette']['ingredient']['bacon_dices'] = 400
default['tartiflette']['ingredient']['white_large_onion'] = 2
# Recommends : Arbois white wine (https://en.wikipedia.org/wiki/Jura_wine)
default['tartiflette']['ingredient']['glass_white_wine'] = 2

# In Celsius degrees
default['tartiflette']['instruction']['preheat_oven']['temperature'] = 220 # 428°F
# In minutes
default['tartiflette']['instruction']['preheat_oven']['time'] = 20
default['tartiflette']['instruction']['bake']['timer'] = 15
