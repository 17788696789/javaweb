let util = {

};
util.title = function (title) {
  title = title ? title : '个人博客';
  window.document.title = title;
};

export default util;
