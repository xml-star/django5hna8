const base = {
    get() {
        return {
            url : "http://localhost:8080/django5hna8/",
            name: "django5hna8",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/django5hna8/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "少数民族特色产品在线销售网站"
        } 
    }
}
export default base
