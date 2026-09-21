import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // 1. Using MediaQuery to determine screen size dynamically
    final double screenWidth = MediaQuery.of(context).size.width;
    final bool isMobile = screenWidth < 650;
    final bool isTablet = screenWidth >= 650 && screenWidth < 1024;
    final bool isDesktop = screenWidth >= 1024;

    return Scaffold(
      backgroundColor: const Color(0xFFF4F7FC),
      // Mobile uses a BottomNavigationBar instead of a Drawer for a different UX
      bottomNavigationBar: isMobile
          ? BottomNavigationBar(
              currentIndex: _selectedIndex,
              onTap: (index) => setState(() => _selectedIndex = index),
              selectedItemColor: Colors.teal.shade700,
              unselectedItemColor: Colors.grey,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.speed), label: 'Cluster'),
                BottomNavigationBarItem(icon: Icon(Icons.memory), label: 'Nodes'),
                BottomNavigationBarItem(icon: Icon(Icons.terminal), label: 'Logs'),
              ],
            )
          : null,
      body: SafeArea(
        child: Row(
          children: [
            // Custom Sidebar for Tablet & Desktop using ListView
            if (!isMobile)
              Container(
                width: isTablet ? 80 : 250,
                color: Colors.white,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Icon(Icons.cloud_done, size: 40, color: Colors.teal),
                    ),
                    if (isDesktop)
                      const Text(
                        'HeliosGrid Console',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    const SizedBox(height: 20),
                    // Expanded ListView for sidebar navigation items
                    Expanded(
                      child: ListView(
                        children: [
                          _SidebarItem(
                            icon: Icons.speed,
                            title: 'Cluster Status',
                            isTablet: isTablet,
                            isSelected: _selectedIndex == 0,
                            onTap: () => setState(() => _selectedIndex = 0),
                          ),
                          _SidebarItem(
                            icon: Icons.memory,
                            title: 'Compute Nodes',
                            isTablet: isTablet,
                            isSelected: _selectedIndex == 1,
                            onTap: () => setState(() => _selectedIndex = 1),
                          ),
                          _SidebarItem(
                            icon: Icons.terminal,
                            title: 'Deployment Logs',
                            isTablet: isTablet,
                            isSelected: _selectedIndex == 2,
                            onTap: () => setState(() => _selectedIndex = 2),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

            // 2. Expanded takes up the remaining space for the main content
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'System Overview',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.teal.shade100,
                          child: Icon(Icons.person, color: Colors.teal.shade800),
                        )
                      ],
                    ),
                    const SizedBox(height: 24),

                    // 3. GridView for metrics
                    GridView.count(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      // Adjusts columns based on screen width
                      crossAxisCount: isMobile ? 2 : (isDesktop ? 4 : 3),
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio: isMobile ? 1.2 : 1.5,
                      children: const [
                        MetricTile(title: 'Active Pods', value: '142', icon: Icons.widgets, color: Colors.blue),
                        MetricTile(title: 'CPU Usage', value: '45%', icon: Icons.memory, color: Colors.orange),
                        MetricTile(title: 'Error Rate', value: '0.02%', icon: Icons.error_outline, color: Colors.green),
                        MetricTile(title: 'API Requests', value: '12.4k', icon: Icons.api, color: Colors.purple),
                      ],
                    ),
                    const SizedBox(height: 24),

                    // 4. Flexible / Expanded Layout for bottom sections
                    if (isMobile) ...[
                      const ResourceUsagePanel(),
                      const SizedBox(height: 16),
                      const PipelineLogsPanel(),
                    ] else ...[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          // Expanded helps divide the row proportionally
                          Expanded(flex: 3, child: ResourceUsagePanel()),
                          SizedBox(width: 16),
                          Expanded(flex: 2, child: PipelineLogsPanel()),
                        ],
                      ),
                    ]
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Custom Sidebar Item
class _SidebarItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isTablet;
  final bool isSelected;
  final VoidCallback onTap;

  const _SidebarItem({
    required this.icon,
    required this.title,
    required this.isTablet,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        color: isSelected ? Colors.teal.shade50 : Colors.transparent,
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        child: Row(
          mainAxisAlignment: isTablet ? MainAxisAlignment.center : MainAxisAlignment.start,
          children: [
            Icon(icon, color: isSelected ? Colors.teal : Colors.grey.shade600),
            if (!isTablet) ...[
              const SizedBox(width: 16),
              Text(
                title,
                style: TextStyle(
                  color: isSelected ? Colors.teal : Colors.grey.shade800,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}

// Grid Item Widget
class MetricTile extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  final MaterialColor color;

  const MetricTile({super.key, required this.title, required this.value, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.02), blurRadius: 10, offset: const Offset(0, 4)),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(color: color.shade50, borderRadius: BorderRadius.circular(8)),
                child: Icon(icon, color: color.shade600, size: 20),
              ),
            ],
          ),
          const Spacer(),
          Text(value, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          Text(title, style: TextStyle(color: Colors.grey.shade600, fontSize: 13)),
        ],
      ),
    );
  }
}

// Left Panel Data
class ResourceUsagePanel extends StatelessWidget {
  const ResourceUsagePanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Cluster Resource Usage', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          Container(
            height: 200,
            decoration: BoxDecoration(color: Colors.grey.shade50, borderRadius: BorderRadius.circular(8)),
            child: Center(
              child: Icon(Icons.bar_chart, size: 80, color: Colors.teal.shade200),
            ),
          ),
        ],
      ),
    );
  }
}

// Right Panel utilizing ListView Builder
class PipelineLogsPanel extends StatelessWidget {
  const PipelineLogsPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Jenkins CI/CD Logs', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          // Using ListView inside the panel
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 4,
            itemBuilder: (context, index) {
              bool isSuccess = index % 3 != 0;
              return Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: Row(
                  children: [
                    Icon(
                      isSuccess ? Icons.check_circle : Icons.error,
                      color: isSuccess ? Colors.green : Colors.red,
                      size: 16,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        isSuccess ? 'Build #${8432 - index} deployed to staging' : 'Build #${8432 - index} failed security check',
                        style: const TextStyle(fontSize: 13),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}