<%--
  Created by IntelliJ IDEA.
  User: nisheshchaudhary
  Date: 02/05/2026
  Time: 4:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Admin</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="../assets/css/main.css" rel="stylesheet">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Outfit&family=Puppies+Play&family=Reem+Kufi:wght@400..700&display=swap');
    </style>
</head>
<body class="bg-[#f9f9f9] text-gray-900">

<div class="flex h-screen overflow-hidden">

    <!-- Sidebar (Ensure sidebar.jsp also uses Tailwind) -->
    <jsp:include page="/includes/slidebar.jsp">
        <jsp:param name="activePage" value="dashboard" />
    </jsp:include>

    <!-- Main Content -->
    <main class="flex-1 ml-64 overflow-y-auto p-12">

        <!-- Header -->
        <div class="mb-10">
            <h1 class="text-5xl font-bold tracking-tight text-black">Welcome to Admin Panel</h1>
            <p class="text-gray-500 mt-3 text-lg">Overview of FindIt activity.</p>
            <div class="h-px bg-gray-200 mt-10"></div>
        </div>

        <!-- Dashboard Stats -->
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 mb-10">
            <div class="bg-white p-8 rounded-2xl border border-gray-100 shadow-sm transition hover:shadow-md">
                <span class="text-[11px] font-bold text-gray-400 uppercase tracking-[0.15em] block mb-4">Total Users</span>
                <div class="text-6xl font-bold" data-counter="${not empty totalUsers ? totalUsers : '7'}">
                    ${not empty totalUsers ? totalUsers : '7'}
                </div>
            </div>

            <div class="bg-white p-8 rounded-2xl border border-gray-100 shadow-sm transition hover:shadow-md">
                <span class="text-[11px] font-bold text-gray-400 uppercase tracking-[0.15em] block mb-4">Lost Reports</span>
                <div class="text-6xl font-bold" data-counter="${not empty totalLost ? totalLost : '2'}">
                    ${not empty totalLost ? totalLost : '2'}
                </div>
            </div>

            <div class="bg-white p-8 rounded-2xl border border-gray-100 shadow-sm transition hover:shadow-md">
                <span class="text-[11px] font-bold text-gray-400 uppercase tracking-[0.15em] block mb-4">Found Reports</span>
                <div class="text-6xl font-bold" data-counter="${not empty totalFound ? totalFound : '4'}">
                    ${not empty totalFound ? totalFound : '4'}
                </div>
            </div>

            <div class="bg-white p-8 rounded-2xl border border-gray-100 shadow-sm transition hover:shadow-md text-gray-400">
                <span class="text-[11px] font-bold text-gray-400 uppercase tracking-[0.15em] block mb-4">Pending Approvals</span>
                <div class="text-6xl font-bold" data-counter="${not empty pendingItems ? pendingItems : '0'}">
                    ${not empty pendingItems ? pendingItems : '0'}
                </div>
            </div>
        </div>

        <!-- Recent Activity Table -->
        <div class="bg-white rounded-2xl border border-gray-100 shadow-sm p-10">
            <div class="flex justify-between items-center mb-8">
                <h2 class="text-2xl font-bold text-gray-900">Recent Submissions</h2>
                <a href="${pageContext.request.contextPath}/admin/items" class="text-xs font-bold text-gray-900 hover:underline">View All</a>
            </div>

            <div class="border border-gray-100 rounded-xl overflow-hidden">
                <table class="w-full text-left">
                    <thead class="bg-gray-50/50 border-b border-gray-100">
                    <tr>
                        <th class="px-6 py-4 text-[10px] font-bold text-gray-400 uppercase tracking-widest">Type</th>
                        <th class="px-6 py-4 text-[10px] font-bold text-gray-400 uppercase tracking-widest">Title</th>
                        <th class="px-6 py-4 text-[10px] font-bold text-gray-400 uppercase tracking-widest">User</th>
                        <th class="px-6 py-4 text-[10px] font-bold text-gray-400 uppercase tracking-widest">Date</th>
                        <th class="px-6 py-4 text-[10px] font-bold text-gray-400 uppercase tracking-widest">Status</th>
                    </tr>
                    </thead>
                    <tbody class="divide-y divide-gray-50">
                    <c:choose>
                        <c:when test="${not empty recentItems}">
                            <c:forEach var="item" items="${recentItems}">
                                <tr class="hover:bg-gray-50/50 transition">
                                    <td class="px-6 py-4">
                                                <span class="px-2 py-1 text-[10px] font-bold rounded uppercase ${item.type == 'LOST' ? 'bg-red-50 text-red-600' : 'bg-green-50 text-green-600'}">
                                                        ${item.type}
                                                </span>
                                    </td>
                                    <td class="px-6 py-4 font-medium text-gray-900">${item.title}</td>
                                    <td class="px-6 py-4 text-gray-500">${item.userName}</td>
                                    <td class="px-6 py-4 text-gray-500">${item.dateReported}</td>
                                    <td class="px-6 py-4">
                                                <span class="px-2 py-1 text-[10px] font-bold rounded uppercase
                                                    ${item.status == 'PENDING' ? 'bg-yellow-50 text-yellow-600' : 'bg-blue-50 text-blue-600'}">
                                                        ${item.status}
                                                </span>
                                    </td>
                                </tr>
                            </c:forEach>
                        </c:when>
                        <c:otherwise>
                            <tr>
                                <td colspan="5" class="px-6 py-20 text-center text-gray-400 italic text-sm">
                                    No recent activity.
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
</body>
</html>
