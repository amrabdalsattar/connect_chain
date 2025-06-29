// Dialog widget for product selection
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../manage_products/logic/cubit/manage_products_cubit.dart';

class ProductSelectionDialog extends StatefulWidget {
  const ProductSelectionDialog({super.key});

  @override
  State<ProductSelectionDialog> createState() => _ProductSelectionDialogState();
}

class _ProductSelectionDialogState extends State<ProductSelectionDialog> {
  String search = '';

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: BlocProvider(
        create: (context) =>
            ManageProductsCubit(getIt())..getSupplierProducts(),
        child: SizedBox(
          width: 350.w,
          height: 500.h,
          child: Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Select Product', style: AppTextStyles.cairoBlackBold18),
                const SizedBox(height: 12),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Search products...',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  onChanged: (val) {
                    setState(() => search = val);
                    context.read<ManageProductsCubit>().debounceSearch(val);
                  },
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: BlocBuilder<ManageProductsCubit, ManageProductsState>(
                    builder: (context, state) {
                      if (state is ManageProductsLoadingState) {
                        return const Center(child: CircularProgressIndicator());
                      } else if (state is ManageProductsSuccessState) {
                        final products = state.products;
                        if (products.isEmpty) {
                          return const Center(child: Text('No products found'));
                        }
                        return ListView.separated(
                          itemCount: products.length,
                          separatorBuilder: (_, __) => const Divider(),
                          itemBuilder: (context, index) {
                            final product = products[index];
                            return ListTile(
                              leading: product.image != null &&
                                      product.image!.isNotEmpty
                                  ? Image.network(product.image!,
                                      width: 40, height: 40, fit: BoxFit.cover)
                                  : const Icon(Icons.inventory_2_outlined),
                              title: Text(product.name),
                              subtitle: Text(product.categoryName),
                              trailing: Text('Stock: ${product.stock}'),
                              onTap: () => Navigator.of(context).pop(product),
                            );
                          },
                        );
                      } else if (state is ManageProductsErrorState) {
                        return const Center(
                            child: Text('Failed to load products'));
                      }
                      return const Center(child: CircularProgressIndicator());
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
