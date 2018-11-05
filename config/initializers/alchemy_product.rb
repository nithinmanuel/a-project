Alchemy::Modules.register_module({
  name: 'product',
  order: 1,
  navigation: {
    name: 'modules.product',
    controller: '/admin/product',
    action: 'index',
    image: 'alchemy/product_module.png',
    sub_navigation: [{
      name: 'modules.product',
      controller: '/admin/product',
      action: 'index'
    }]
  }
})

Alchemy.register_ability(ProductAbility)
