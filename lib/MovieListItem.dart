import 'package:flutter/material.dart';

class MovieListItem extends StatelessWidget
{

  final String imageUrl;
  final String name;
  final GlobalKey backgroundImageKey=GlobalKey();
 // final String
  MovieListItem(
  {
    Key? key,
    required this.name,
    required this.imageUrl,
  }):super(key:key);
  @override
    Widget build(BuildContext context){
      //var backgroundImageKey;
      return Container(
        margin:const EdgeInsets.only(bottom:10.0,left: 8.0,right: 8.0),
        child: AspectRatio(
          aspectRatio: 16/9,
          child: ClipRRect(
            borderRadius:BorderRadius.circular(16.0),
            child: Stack(
              children: [
                Flow(
                  delegate: _ParallaxFlowDelegate(
                  scrollable: Scrollable.of(context),
                  listItemContext: context,
                  backgroundImageKey: backgroundImageKey
                ),
               children: [
                 Image.network(
                  imageUrl,
                  width: double.infinity,
                  key: backgroundImageKey,
                  fit: BoxFit.cover,
                   ),
                  ],
                ),
                Positioned.fill(
                  child: DecoratedBox(
                   decoration: BoxDecoration(
                       gradient:LinearGradient(colors: [
                         Colors.transparent,
                         Colors.black.withOpacity(0.7),
                       ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                         stops:const [0.6,0.95]
                       )
                   ),
                )
                )
              ],
            ),
          ),
        ),
      );
  }
}

class _ParallaxFlowDelegate extends FlowDelegate{
  final ScrollableState scrollable;
  final BuildContext listItemContext;
  final GlobalKey backgroundImageKey;

  _ParallaxFlowDelegate({
    required this.scrollable,
    required this.listItemContext,
    required this.backgroundImageKey
  }) : super(repaint :scrollable.position);

  @override
  BoxConstraints getConstraintsForChild(int i,BoxConstraints constraints){
    return BoxConstraints.tightFor(width: constraints.maxWidth);
  }

  @override
  void paintChildren(FlowPaintingContext context) {
    final scrollableBox=scrollable.context.findRenderObject() as RenderBox;
    final listItemBox=listItemContext.findRenderObject() as RenderBox;
    final listItemOffset=listItemBox.localToGlobal(
      listItemBox.size.centerLeft(Offset.zero),
        ancestor:scrollableBox,
    );
    final viewportDimension=scrollable.position.viewportDimension;
    final scrollFraction=(listItemOffset.dy/viewportDimension).clamp(0.0,1.0);

    final verticalAlignment=Alignment(0.0, scrollFraction *4 - 1);

    final backgroundSize=(backgroundImageKey.currentContext!.findRenderObject() as RenderBox).size;

    final listItemSize=context.size;
    final childRect=verticalAlignment.inscribe(backgroundSize, Offset.zero & listItemSize);

    context.paintChild(
        0,transform: Transform.translate(offset: Offset(0.0,childRect.top)).transform,
    );
  }

  @override
  bool shouldRepaint(covariant _ParallaxFlowDelegate oldDelegate) {
    return scrollable!=oldDelegate.scrollable ||
    listItemContext!=oldDelegate.listItemContext ||
    backgroundImageKey!=oldDelegate.backgroundImageKey;
  }
}