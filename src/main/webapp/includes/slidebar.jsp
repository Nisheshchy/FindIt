<%-- slidebar.jsp — Admin Sidebar Fragment --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<aside class="w-64 bg-slate-900 text-slate-100 flex flex-col fixed h-full transition-all duration-300 z-50">

    <!-- Sidebar Header -->
    <div class="p-6 border-b border-slate-800">
        <a href="${pageContext.request.contextPath}/admin/adminDashboard"
           class="text-xl font-bold tracking-tight bg-gradient-to-r from-blue-400 to-cyan-300 bg-clip-text text-transparent">
            Find It Admin
        </a>
    </div>

    <!-- Sidebar Navigation -->
    <nav class="flex-1 px-4 py-6 space-y-2 overflow-y-auto">
        <!-- Dashboard -->
        <a href="${pageContext.request.contextPath}/admin/adminDashboard"
           class="flex items-center gap-3 px-3 py-2 rounded-lg transition-colors ${param.activePage == 'dashboard' || param.activePage == 'adminDashboard' ? 'bg-slate-800 text-white' : 'text-slate-400 hover:bg-slate-800 hover:text-white'}">
            <svg class="w-5 h-5" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect width="7" height="9" x="3" y="3" rx="1"/><rect width="7" height="5" x="14" y="3" rx="1"/><rect width="7" height="9" x="14" y="12" rx="1"/><rect width="7" height="5" x="3" y="16" rx="1"/></svg>
            <span class="font-medium text-sm">Dashboard</span>
        </a>

        <!-- Manage Users -->
        <a href="${pageContext.request.contextPath}/admin/users"
           class="flex items-center gap-3 px-3 py-2 rounded-lg transition-colors ${param.activePage == 'users' ? 'bg-slate-800 text-white' : 'text-slate-400 hover:bg-slate-800 hover:text-white'}">
            <svg class="w-5 h-5" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M16 21v-2a4 4 0 0 0-4-4H6a4 4 0 0 0-4 4v2"/><circle cx="9" cy="7" r="4"/><path d="M22 21v-2a4 4 0 0 0-3-3.87"/><path d="M16 3.13a4 4 0 0 1 0 7.75"/></svg>
            <span class="font-medium text-sm">Manage Users</span>
        </a>

        <!-- Manage Items -->
        <a href="${pageContext.request.contextPath}/admin/items"
           class="flex items-center gap-3 px-3 py-2 rounded-lg transition-colors ${param.activePage == 'items' ? 'bg-slate-800 text-white' : 'text-slate-400 hover:bg-slate-800 hover:text-white'}">
            <svg class="w-5 h-5" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="m7.5 4.27 9 5.15"/><path d="M21 8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16Z"/><path d="m3.3 7 8.7 5 8.7-5"/><path d="M12 22V12"/></svg>
            <span class="font-medium text-sm">Manage Items</span>
        </a>

        <!-- Categories -->
        <a href="${pageContext.request.contextPath}/admin/categories"
           class="flex items-center gap-3 px-3 py-2 rounded-lg transition-colors ${param.activePage == 'categories' ? 'bg-slate-800 text-white' : 'text-slate-400 hover:bg-slate-800 hover:text-white'}">
            <svg class="w-5 h-5" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M20 20a2 2 0 0 0 2-2V8a2 2 0 0 0-2-2h-7.9a2 2 0 0 1-1.69-.9L9.6 3.9A2 2 0 0 0 7.93 3H4a2 2 0 0 0-2 2v13a2 2 0 0 0 2 2Z"/></svg>
            <span class="font-medium text-sm">Categories</span>
        </a>
    </nav>

    <!-- Sidebar Profile Footer -->
    <div class="p-4 border-t border-slate-800 bg-slate-900/50">
        <div class="mb-4 px-2">
            <p class="text-sm font-semibold text-white truncate">${not empty sessionScope.userName ? sessionScope.userName : 'Admin'}</p>
            <p class="text-xs text-slate-400">Administrator</p>
        </div>

        <div class="space-y-1">
            <a href="${pageContext.request.contextPath}/"
               class="flex items-center gap-3 px-2 py-2 text-xs text-slate-400 hover:text-white transition-colors">
                <svg class="w-4 h-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="m3 9 9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"/><polyline points="9 22 9 12 15 12 15 22"/></svg>
                Public Site
            </a>
            <a href="${pageContext.request.contextPath}/logout"
               class="flex items-center gap-3 px-2 py-2 text-xs text-red-400 hover:text-red-300 transition-colors">
                <svg class="w-4 h-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"/><polyline points="16 17 21 12 16 7"/><line x1="21" x2="9" y1="12" y2="12"/></svg>
                Sign Out
            </a>
        </div>
    </div>

</aside>