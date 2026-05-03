<%--
  Created by IntelliJ IDEA.
  User: nisheshchaudhary
  Date: 02/05/2026
  Time: 9:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%-- manage-items.jsp — Admin Item Management --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en" class="h-full bg-gray-50">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Find It Admin — Manage Items</title>
  <!-- Tailwind Play CDN (For development; use PostCSS/Build for production) -->
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="h-full">

<div class="flex min-h-screen">

  <!-- Sidebar -->
  <jsp:include page="/includes/slidebar.jsp">
    <jsp:param name="activePage" value="items" />
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
      <h1 class="text-4xl font-bold tracking-tight text-gray-900">Manage Items</h1>
      <p class="mt-2 text-gray-500 text-lg">Moderate all lost and found listings from this dashboard.</p>
      <div class="h-px bg-gray-200 mt-8"></div>
    </div>

    <!-- Items Table Container -->
    <div class="bg-white rounded-2xl border border-gray-100 shadow-sm overflow-hidden">
      <div class="overflow-x-auto">
        <table class="min-w-full divide-y divide-gray-100">
          <thead class="bg-gray-50/50">
          <tr>
            <th class="px-6 py-4 text-left text-[10px] font-bold text-gray-400 uppercase tracking-widest">Type</th>
            <th class="px-6 py-4 text-left text-[10px] font-bold text-gray-400 uppercase tracking-widest">Title</th>
            <th class="px-6 py-4 text-left text-[10px] font-bold text-gray-400 uppercase tracking-widest">Category</th>
            <th class="px-6 py-4 text-left text-[10px] font-bold text-gray-400 uppercase tracking-widest">Posted By</th>
            <th class="px-6 py-4 text-left text-[10px] font-bold text-gray-400 uppercase tracking-widest">Status</th>
            <th class="px-6 py-4 text-right text-[10px] font-bold text-gray-400 uppercase tracking-widest">Actions</th>
          </tr>
          </thead>
          <tbody class="divide-y divide-gray-50 bg-white">
          <c:choose>
            <c:when test="${not empty itemsList}">
              <c:forEach var="item" items="${itemsList}">
                <tr class="hover:bg-gray-50/50 transition-colors">
                  <!-- Type Badge -->
                  <td class="whitespace-nowrap px-6 py-4">
                    <span class="inline-flex items-center rounded px-2 py-0.5 text-[10px] font-bold uppercase
                      ${item.type == 'LOST' ? 'bg-orange-50 text-orange-600' : 'bg-blue-50 text-blue-600'}">
                        ${item.type}
                    </span>
                  </td>

                  <!-- Title -->
                  <td class="px-6 py-4">
                    <a href="${pageContext.request.contextPath}/browse" class="text-sm font-semibold text-indigo-600 hover:text-indigo-800 hover:underline">
                        ${item.title}
                    </a>
                  </td>

                  <!-- Category & User -->
                  <td class="whitespace-nowrap px-6 py-4 text-sm text-gray-600">${item.categoryName}</td>
                  <td class="whitespace-nowrap px-6 py-4 text-sm text-gray-500 font-medium">${item.userName}</td>

                  <!-- Status Badge -->
                  <td class="whitespace-nowrap px-6 py-4">
                    <c:set var="statusClasses" value="bg-gray-50 text-gray-600" />
                    <c:choose>
                      <c:when test="${item.status == 'PENDING'}"> <c:set var="statusClasses" value="bg-yellow-50 text-yellow-600" /> </c:when>
                      <c:when test="${item.status == 'ACTIVE'}">  <c:set var="statusClasses" value="bg-green-50 text-green-600" /> </c:when>
                      <c:when test="${item.status == 'RESOLVED'}"><c:set var="statusClasses" value="bg-emerald-50 text-emerald-600" /> </c:when>
                      <c:when test="${item.status == 'REJECTED'}"><c:set var="statusClasses" value="bg-red-50 text-red-600" /> </c:when>
                    </c:choose>
                    <span class="inline-flex items-center rounded px-2 py-0.5 text-[10px] font-bold uppercase ${statusClasses}">
                        ${item.status}
                    </span>
                  </td>

                  <!-- Action Form -->
                  <td class="whitespace-nowrap px-6 py-4 text-right text-sm">
                    <form action="${pageContext.request.contextPath}/admin/items" method="POST" class="flex items-center justify-end gap-2">
                      <input type="hidden" name="itemId" value="${item.id}">
                      <select name="newStatus" class="block w-28 rounded-lg border-gray-200 py-1.5 text-xs font-medium focus:border-indigo-500 focus:ring-indigo-500 shadow-sm transition">
                        <option value="PENDING" ${item.status == 'PENDING' ? 'selected' : ''}>PENDING</option>
                        <option value="ACTIVE" ${item.status == 'ACTIVE' ? 'selected' : ''}>ACTIVE</option>
                        <option value="REJECTED" ${item.status == 'REJECTED' ? 'selected' : ''}>REJECTED</option>
                        <option value="RESOLVED" ${item.status == 'RESOLVED' ? 'selected' : ''}>RESOLVED</option>
                      </select>
                      <button type="submit" name="action" value="UPDATE_STATUS"
                              class="rounded-lg bg-indigo-600 px-4 py-1.5 text-[10px] font-bold uppercase tracking-wider text-white shadow-sm hover:bg-indigo-700 transition active:scale-95">
                        Update
                      </button>
                    </form>
                  </td>
                </tr>
              </c:forEach>
            </c:when>
            <c:otherwise>
              <tr>
                <td colspan="6" class="px-6 py-20 text-center text-sm text-gray-400 italic">
                  No items found in the database.
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

<jsp:include page="/includes/scripts.jsp" />
</body>
</html>

