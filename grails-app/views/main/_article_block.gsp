
<div class="main-block">
    <h4 class="main-header"><i class="${articleBlock.category.iconCssNames}"></i> <g:message code="${articleBlock.category.labelCode}" default="${articleBlock.category.defaultLabel}" /></h4>
    <div class="panel panel-default">

        <!-- Table -->

        <ul class="list-group">

            <g:each in="${articleBlock.articles}" var="article">

                <g:set var="evaluateClass" value="no-note" />

                <g:if test="${article.selectedNote}">
                    <g:set var="evaluateClass" value="success" />
                </g:if>
                <g:elseif test="${article.noteCount > 0}">
                    <g:set var="evaluateClass" value="has-note" />
                </g:elseif>

                <li class="list-group-item list-group-item-small ${category?.useEvaluate ? 'list-group-item-question':''} list-group-${evaluateClass} clearfix">
                    <div class="list-title-wrapper">
                        <h5 class="list-group-item-heading ${category?.useEvaluate ? 'list-group-item-evaluate' : ''}">
                            <g:link controller="article" action="show" id="${article.id}">${fieldValue(bean: article, field: "title")}</g:link>
                            <div class="list-group-item-author pull-right clearfix">
                                <g:avatar avatar="${article.displayAuthor}" size="x-small" dateCreated="${article.dateCreated}" />
                            </div>
                        </h5>
                    </div>
                </li>
            </g:each>
        </ul>
    </div>
</div>