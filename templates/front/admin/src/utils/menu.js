const menu = {
    list() {
        return [{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"商城公告","menuJump":"列表","tableName":"shangchenggonggao"}],"menu":"商城公告管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"公告类型","menuJump":"列表","tableName":"gonggaoleixing"}],"menu":"公告类型管理"},{"child":[{"buttons":["新增","查看","修改","删除","查看评论"],"menu":"商品信息","menuJump":"列表","tableName":"shangpinxinxi"}],"menu":"商品信息管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"商品类别","menuJump":"列表","tableName":"shangpinleibie"}],"menu":"商品类别管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"最新资讯","tableName":"news"},{"buttons":["新增","查看","修改","删除"],"menu":"客服中心","tableName":"chat"},{"buttons":["查看","修改"],"menu":"轮播图管理","tableName":"config"}],"menu":"系统管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"未支付订单","tableName":"orders/未支付"},{"buttons":["新增","查看","修改","删除"],"menu":"已取消订单","tableName":"orders/已取消"},{"buttons":["新增","查看","修改","删除","发货"],"menu":"已支付订单","tableName":"orders/已支付"},{"buttons":["新增","查看","修改","删除"],"menu":"已退款订单","tableName":"orders/已退款"},{"buttons":["新增","查看","修改","删除"],"menu":"已完成订单","tableName":"orders/已完成"},{"buttons":["新增","查看","修改","删除"],"menu":"已发货订单","tableName":"orders/已发货"}],"menu":"订单管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"商城公告列表","menuJump":"列表","tableName":"shangchenggonggao"}],"menu":"商城公告模块"},{"child":[{"buttons":["查看","查看评论"],"menu":"商品信息列表","menuJump":"列表","tableName":"shangpinxinxi"}],"menu":"商品信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["查看","删除"],"menu":"我的收藏管理","tableName":"storeup"}],"menu":"我的收藏管理"},{"child":[{"buttons":["确认收货"],"menu":"已发货订单","tableName":"orders/已发货"}],"menu":"订单管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"商城公告列表","menuJump":"列表","tableName":"shangchenggonggao"}],"menu":"商城公告模块"},{"child":[{"buttons":["查看","查看评论"],"menu":"商品信息列表","menuJump":"列表","tableName":"shangpinxinxi"}],"menu":"商品信息模块"}],"hasBackLogin":"否","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"}]
    }
}
export default menu;
