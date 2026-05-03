<%--
  Created by IntelliJ IDEA.
  User: nisheshchaudhary
  Date: 02/05/2026
  Time: 9:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%-- manage-users.jsp — Admin User Management --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en" class="h-full bg-gray-50">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Find It Admin — Manage Users</title>
    <!-- Tailwind Play CDN (Replace with your build process link if necessary) -->
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="h-full">

<div class="flex min-h-screen">

    <!-- Sidebar (Assumed to have its own Tailwind styling or a fixed width) -->
    <jsp:include page="/includes/slidebar.jsp">
        <jsp:param name="activePage" value="users" />
    </jsp:include>

    <!-- Main Content -->
    <main class="flex-1 ml-64 p-12 bg-[#f9f9f9]">

        <!-- Alerts -->
        <c:if test="${not empty errors}">
            <div class="mb-6 p-4 rounded-xl bg-red-50 border border-red-100 text-red-700 text-sm animate-pulse">
                <span class="font-bold">Error:</span> ${errors.general}
            </div>
        </c:if>
        <c:if test="${not empty successMessage}">
            <div class="mb-6 p-4 rounded-xl bg-green-50 border border-green-100 text-green-700 text-sm">
                <span class="font-bold">Success:</span> ${successMessage}
            </div>
        </c:if>

        <!-- Header Section -->
        <div class="mb-10">
            <h1 class="text-4xl font-bold tracking-tight text-gray-900">Manage Users</h1>
            <p class="mt-2 text-gray-500 text-lg">View and moderate platform users and their access levels.</p>
            <div class="h-px bg-gray-200 mt-8"></div>
        </div>

        <!-- Users Table -->
        <div class="bg-white rounded-2xl border border-gray-100 shadow-sm overflow-hidden">
            <div class="overflow-x-auto">
                <table class="min-w-full divide-y divide-gray-100">
                    <thead class="bg-gray-50/50">
                    <tr>
                        <th class="px-6 py-4 text-left text-[10px] font-bold text-gray-400 uppercase tracking-widest">Name</th>
                        <th class="px-6 py-4 text-left text-[10px] font-bold text-gray-400 uppercase tracking-widest">Email</th>
                        <th class="px-6 py-4 text-left text-[10px] font-bold text-gray-400 uppercase tracking-widest">Phone</th>
                        <th class="px-6 py-4 text-left text-[10px] font-bold text-gray-400 uppercase tracking-widest">Role</th>
                        <th class="px-6 py-4 text-left text-[10px] font-bold text-gray-400 uppercase tracking-widest">Status</th>
                        <th class="px-6 py-4 text-right text-[10px] font-bold text-gray-400 uppercase tracking-widest">Actions</th>
                    </tr>
                    </thead>
                    <tbody class="divide-y divide-gray-50 bg-white">
                    <c:choose>
                        <c:when test="${not empty usersList}">
                            <c:forEach var="user" items="${usersList}">
                                <tr class="hover:bg-gray-50/50 transition-colors">
                                    <td class="px-6 py-4 whitespace-nowrap text-sm font-semibold text-gray-900">${user.fullName}</td>
                                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-600">${user.email}</td>
                                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-600">${user.phone}</td>
                                    <td class="px-6 py-4 whitespace-nowrap text-sm">
                    <span class="inline-flex items-center rounded px-2 py-0.5 text-[10px] font-bold uppercase
                      ${user.role == 'ADMIN' ? 'bg-purple-50 text-purple-600' : 'bg-blue-50 text-blue-600'}">
                            ${user.role}
                    </span>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap text-sm">
                    <span class="inline-flex items-center rounded px-2 py-0.5 text-[10px] font-bold uppercase
                      ${user.status == 'ACTIVE' ? 'bg-green-50 text-green-600' : 'bg-red-50 text-red-600'}">
                            ${user.status}
                    </span>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap text-right text-sm font-medium">
                                        <c:if test="${user.id != sessionScope.userId}">
                                            <div class="flex justify-end space-x-3">
                                                <c:choose>
                                                    <c:when test="${user.status == 'ACTIVE'}">
                                                        <form action="${pageContext.request.contextPath}/admin/users" method="POST" class="m-0">
                                                            <input type="hidden" name="action" value="SUSPEND">
                                                            <input type="hidden" name="userId" value="${user.id}">
                                                            <button type="submit" class="text-[10px] font-bold uppercase tracking-wider text-red-600 hover:text-red-800 transition">
                                                                Suspend
                                                            </button>
                                                        </form>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <form action="${pageContext.request.contextPath}/admin/users" method="POST" class="m-0">
                                                            <input type="hidden" name="action" value="ACTIVATE">
                                                            <input type="hidden" name="userId" value="${user.id}">
                                                            <button type="submit" class="text-[10px] font-bold uppercase tracking-wider text-indigo-600 hover:text-indigo-800 transition">
                                                                Activate
                                                            </button>
                                                        </form>
                                                    </c:otherwise>
                                                </c:choose>
                                            </div>
                                        </c:if>
                                    </td>
                                </tr>
                            </c:forEach>
                        </c:when>
                        <c:otherwise>
                            <tr>
                                <td colspan="6" class="px-6 py-20 text-center text-sm text-gray-400 italic">
                                    No users found in the database.
                                </td>
                            </tr>
                        </c:otherwise>
                    </c:choose>
                    </tbody>
                </table>
            </div>
        </div>
    </main>
</div>

<!-- Global Scripts -->
<jsp:include page="/includes/scripts.jsp" />
</body>
</html>

