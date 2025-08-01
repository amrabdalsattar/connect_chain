part of '../add_product_screen.dart';

class AddProductCustomCategoriesDropDown extends StatelessWidget {
  const AddProductCustomCategoriesDropDown({
    super.key,
    required this.addProductCubit,
  });

  final AddProductCubit addProductCubit;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddProductCubit, AddProductState>(
      buildWhen: (previous, current) =>
          current is AddProductAutoFillSuccessState ||
          current is AddProductCategoriesSuccessState,
      builder: (context, state) {
        return CustomDropdownButton(
          onChanged: (value) {
            addProductCubit.setCategory(value);
          },
          value: addProductCubit.categoryController,
          items: List.generate(
              addProductCubit.categories.length,
              (index) => DropdownMenuItem(
                    value: addProductCubit.categories[index].name,
                    child: Text(
                      addProductCubit.categories[index].name,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )),
          hintText: 'نوع المنتج',
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'الرجاء إدخال نوع المنتج';
            }
          },
        );
      },
    );
  }
}

class AutoFillWithAiButton extends StatelessWidget {
  const AutoFillWithAiButton({
    super.key,
    required this.addProductCubit,
  });

  final AddProductCubit addProductCubit;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddProductCubit, AddProductState>(
      builder: (context, state) {
        return IconButton(
            tooltip: 'الملء التلقاي',
            onPressed: () async {
              await addProductCubit.fillWithAi();
            },
            icon: const Icon(Icons.auto_awesome));
      },
    );
  }
}
