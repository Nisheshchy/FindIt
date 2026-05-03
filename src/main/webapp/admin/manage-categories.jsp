<%--
  Created by IntelliJ IDEA.
  User: nisheshchaudhary
  Date: 02/05/2026
  Time: 8:49 PM
  To change this template use File | Settings | File Templates.
--%>

<%-- manage-categories.jsp — Admin Category Management (Tailwind Version) --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en" class="h-full bg-gray-50">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Find It Admin — Manage Categories</title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="h-full">

<div class="flex min-h-screen">

  <!-- Sidebar (Assumed to be a flexible nav) -->
  <jsp:include page="/includes/slidebar.jsp">
    <jsp:param name="activePage" value="categories" />
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
      <h1 class="text-4xl font-bold tracking-tight text-gray-900">Manage Categories</h1>
      <p class="mt-2 text-gray-500 text-lg">Configure the types of items users can report.</p>
      <div class="h-px bg-gray-200 mt-8"></div>
    </div>

    <!-- Create New Category Card -->
    <div class="bg-white rounded-2xl border border-gray-100 shadow-sm p-8 mb-10">
      <h3 class="text-lg font-bold text-gray-900 mb-6">Add New Category</h3>
      <form action="${pageContext.request.contextPath}/admin/categories" method="POST" class="flex flex-col sm:flex-row gap-4">
        <input type="hidden" name="action" value="CREATE">
        <div class="flex-1 max-w-sm">
          <input type="text"
                 name="categoryName"
                 placeholder="e.g. Electronics, Keys"
                 class="block w-full rounded-xl border-gray-200 py-3 text-sm text-gray-900 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 transition"
                 required>
        </div>
        <button type="submit"
                class="inline-flex justify-center items-center rounded-xl bg-indigo-600 px-6 py-3 text-[10px] font-bold uppercase tracking-wider text-white shadow-sm hover:bg-indigo-700 transition active:scale-95">
          Add Category
        </button>
      </form>
    </div>

    <!-- Categories Table Section -->
    <div class="bg-white rounded-2xl border border-gray-100 shadow-sm overflow-hidden">
      <table class="min-w-full divide-y divide-gray-100">
        <thead class="bg-gray-50/50">
        <tr>
          <th scope="col" class="px-6 py-4 text-left text-[10px] font-bold text-gray-400 uppercase tracking-widest">Category ID</th>
          <th scope="col" class="px-6 py-4 text-left text-[10px] font-bold text-gray-400 uppercase tracking-widest">Name</th>
          <th scope="col" class="px-6 py-4 text-right text-[10px] font-bold text-gray-400 uppercase tracking-widest">Action</th>
        </tr>
        </thead>
        <tbody class="bg-white divide-y divide-gray-50">
        <c:choose>
          <c:when test="${not empty categoriesList}">
            <c:forEach var="cat" items="${categoriesList}">
              <tr class="hover:bg-gray-50/50 transition-colors">
                <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-400 font-mono">#${cat.id}</td>
                <td class="px-6 py-4 whitespace-nowrap text-sm font-semibold text-gray-900">${cat.name}</td>
                <td class="px-6 py-4 whitespace-nowrap text-right text-sm font-medium">
                  <form action="${pageContext.request.contextPath}/admin/categories" method="POST" class="m-0">
                    <input type="hidden" name="action" value="DELETE">
                    <input type="hidden" name="categoryId" value="${cat.id}">
                    <button type="submit"
                            class="text-[10px] font-bold uppercase tracking-wider text-red-600 hover:text-red-800 transition"
                            onclick="return confirm('Delete this category? Items linked to it may be affected.');">
                      Delete
                    </button>
                  </form>
                </td>
              </tr>
            </c:forEach>
          </c:when>
          <c:otherwise>
            <tr>
              <td colspan="3" class="px-6 py-20 text-center text-sm text-gray-400 italic">
                No categories found.
              </td>
            </tr>
          </c:otherwise>
        </c:choose>
        </tbody>
      </table>
    </div>
  </main>
</div>

<!-- Global Scripts -->
<jsp:include page="/includes/scripts.jsp" />
</body>
</html>
