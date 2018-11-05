Alchemy::Modules.register_module({
  name: 'my_module',
  order: 1,
  navigation: {
    name: 'modules.my_module',
    controller: '/admin/my_module',
    action: 'index',
    image: 'alchemy/my_module_module.png',
    sub_navigation: [{
      name: 'modules.my_module',
      controller: '/admin/my_module',
      action: 'index'
    }]
  }
})

Alchemy.register_ability(MyModuleAbility)
