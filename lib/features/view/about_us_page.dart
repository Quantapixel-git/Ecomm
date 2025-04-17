import 'package:flutter/material.dart';
import '../../constants.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildSection(
              context,
              title: "Our Company",
              content:
                  "We are a forward-thinking company committed to innovation and excellence. Our mission is to deliver high-quality products that make life easier and more enjoyable for our customers.",
            ),
            const SizedBox(height: 32),
            _buildSection(
              context,
              title: "Team Work",
              content:
                  "Teamwork is at the core of everything we do. Our collaborative culture empowers every team member to contribute, create, and grow together to achieve our shared goals.",
            ),
            const SizedBox(height: 32),
            _buildInfoTilesSection(context),
            const SizedBox(height: 32),
            _buildStatsSection(context),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(BuildContext context,
      {required String title, required String content}) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(defaultBorderRadious),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          Text(
            content,
            style:
                Theme.of(context).textTheme.bodyMedium?.copyWith(height: 1.5),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoTilesSection(BuildContext context) {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: _InfoTile(
            icon: Icons.flag_outlined,
            title: "Our Mission",
            description:
                "To innovate and provide high-quality solutions that empower people.",
          ),
        ),
        SizedBox(height: 12),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: _InfoTile(
            icon: Icons.remove_red_eye_outlined,
            title: "Our Vision",
            description:
                "To be a global leader in technology and customer satisfaction.",
          ),
        ),
        SizedBox(height: 12),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: _InfoTile(
            icon: Icons.lightbulb_outline,
            title: "Our Idea",
            description:
                "Simple, efficient, and smart solutions to everyday problems.",
          ),
        ),
      ],
    );
  }

  Widget _buildStatsSection(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: _StatTile(
              label: "Years", value: "10+", icon: Icons.calendar_today),
        ),
        SizedBox(width: 10),
        Expanded(
          child: _StatTile(label: "Clients", value: "100+", icon: Icons.people),
        ),
        SizedBox(width: 10),
        Expanded(
          child: _StatTile(label: "Projects", value: "200+", icon: Icons.work),
        ),
        SizedBox(width: 10),
        Expanded(
          child: _StatTile(
              label: "Awards", value: "25+", icon: Icons.emoji_events),
        ),
      ],
    );
  }
}

class _InfoTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const _InfoTile({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(defaultBorderRadious),
      ),
      child: Column(
        children: [
          Icon(icon, size: 32, color: primaryColor),
          const SizedBox(height: 12),
          Text(
            title,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 6),
          Text(
            description,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  height: 1.4,
                  color: blackColor.withOpacity(0.7),
                ),
          ),
        ],
      ),
    );
  }
}

class _StatTile extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;

  const _StatTile({
    required this.label,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        border: Border.all(color: primaryColor),
        borderRadius: BorderRadius.circular(defaultBorderRadious),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            value,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
          ),
          const SizedBox(height: 8),
          Icon(icon, color: primaryColor, size: 20),
          const SizedBox(height: 8),
          Text(
            label,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
