//require(["lte/plugins/jquery/jquery.min.js"]);
//require(["js/common/page/page1.js"]);

require.config({
	paths: {
	  'jquery': '../../lte/plugins/jquery/jquery.min',
	  'page1': '../common/page/page1',
	}
});

require(['page1'], function () {
	funsad();
});