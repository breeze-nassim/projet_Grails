<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#create-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="create-user" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.user}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.user}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>

            <form action="save" method="post">

                <table>
                    <tbody>
                    <tr>
                        <td><label for="username">user name: </label></td>
                        <td><input type="text" name="username" id="username" required=""></td>
                    </tr>
                    <tr>
                        <td><label for="password">user password: </label></td>
                        <td><input type="password" id="pass" name="password"
                                   required></td>
                    </tr>
                    <tr>
                        <td><label for="name">Role: </label></td>
                        <td><select name="my_html_select_box">

                            <option>admin </option>
                            <option>moderateur</option>
                            <option>client</option>

                        </select></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Enregistrer">
                          </td>

                    </tr>
                    </tbody>
                </table>


            </form>

        </div>
    </body>
</html>
