#
# Cookbook Name:: tartiflette
# Recipe:: default
#

execute 'Peel potatoes' do
  command 'peel' + node['tartiflette']['ingredient']['potatoes']
end

execute 'Slice potatoes in large cube' do
  command 'slice' + node['tartiflette']['ingredient']['potatoes']
end

execute 'Melt butter and olive oil in frying pan'

execute 'Add potatoes' do
  command 'add' + node['tartiflette']['ingredient']['potatoes'] + 'in frying pan'
end

execute 'Preheat oven' do
  command 'turn_on' + node['tartiflette']['instruction']['preheat_oven']['temperature']
  timeout node['tartiflette']['instruction']['preheat_oven']['time']
end

execute 'Peel onions' do
  command 'peel' + node['tartiflette']['ingredient']['white_large_onion']
end

execute 'Slice onions' do
  command 'slice' + node['tartiflette']['ingredient']['white_large_onion']
end

if node['tartiflette']['ingredient']['potatoes'].knife_enter_easily?
  execute 'Add potatoes' do
    command 'add' + node['tartiflette']['ingredient']['potatoes']
    notifies :run, 'execute[Add onions]'
  end
end

execute 'Add onions' do
  command 'add' + node['tartiflette']['ingredient']['white_large_onion'].sliced?
  action :nothing
end

if node['tartiflette']['ingredient']['white_large_onion'].translucent? do
  execute 'add bacon dices' do
    command 'add' + node['tartiflette']['ingredient']['bacon_dices']
    timeout 5
  end

  execute 'Add salt and pepper' do
    command 'add' + salt + pepper
  end

  execute 'Add white wine' do
    command 'add' + node['tartiflette']['ingredient']['glass_white_wine']
  end
end

# each one having rind on one side and inside cheese on the other side
execute 'Slice reblochon' do
  command 'slice' + node['tartiflette']['ingredient']['reblochon'] / 2
end

perfect_rind_side = 'UP'
execute 'Add sliced reblochon' do
  command 'add' + node['tartiflette']['ingredient']['reblochon'] / 2 + perfect_rind_side
  action :nothing
end

until node['tartiflette']['ingredient'].cooked? == 0
  execute 'Add to a gratin dish' do
    node['tartiflette']['ingredient'].each do |ingredient|
      command 'add' + ingredient / 2
      notifies :run, 'execute[Add sliced reblochon]'
    end
  end
end

until node['tartiflette']['instruction']['bake']['timer'] == 0 || crust.golden? == true
  execute 'Bake in oven' do
    command 'bake' + node['tartiflette']['instruction']['bake']['timer']
    action :enjoy
  end
end
