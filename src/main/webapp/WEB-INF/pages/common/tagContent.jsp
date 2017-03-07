<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var = "CTX" value="${pageContext.request.contextPath}" />
<c:set var = "JS_PATH" value="${CTX}/WEB-INF/statics/js" />
<c:set var = "CSS_PATH" value="${CTX}/WEB-INF/statics/css" />
<c:set var = "IMAGE_PATH" value="${CTX}/WEB-INF/statics/images" />

<script type="text/javascript">
    var BASE_PATH = '${CTX}';
</script>