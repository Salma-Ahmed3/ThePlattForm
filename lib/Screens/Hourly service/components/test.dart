// builder: (context, state) {
//   if (state is HourlyServicesLoading) {
//     return Center(child: Loader(loading: true));
//   } 
//   if (state is HourlyServicesSuccess) {
//     return ListView.builder(
//       itemCount: state.services.length,
//       itemBuilder: (context, index) {
//         final service = state.services[index];
//         return ListTile(
//           title: Text(service.name),
//           subtitle: Text(service.description),
//           leading: Image.network(service.iconUrl),
//         );
//       },
//     );
//   } else {
//     return const SizedBox();
//   }
// }
