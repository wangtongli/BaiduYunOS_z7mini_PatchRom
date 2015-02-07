.class Landroid/widget/NubiaCursorController$SelectionStartHandleView;
.super Landroid/widget/NubiaCursorController$NubiaHandleView;
.source "NubiaCursorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NubiaCursorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectionStartHandleView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/NubiaCursorController;


# direct methods
.method public constructor <init>(Landroid/widget/NubiaCursorController;Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter "editor"
    .parameter "drawableLtr"
    .parameter "drawableRtl"

    .prologue
    .line 1357
    iput-object p1, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->this$0:Landroid/widget/NubiaCursorController;

    .line 1358
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/NubiaCursorController$NubiaHandleView;-><init>(Landroid/widget/NubiaCursorController;Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1359
    return-void
.end method


# virtual methods
.method protected getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 1363
    iget-object v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method public getHotspotLocationOnScreen([I)V
    .locals 3
    .parameter "outLocation"

    .prologue
    .line 1368
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainerX:I

    iget v2, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mHotspotX:I

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 1369
    const/4 v0, 0x1

    iget v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainerY:I

    iget v2, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mLineHeight:I

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 1370
    return-void
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 2
    .parameter "drawable"
    .parameter "isRtlRun"

    .prologue
    .line 1374
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected isVisible()Z
    .locals 5

    .prologue
    .line 1378
    iget-boolean v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mIsDragging:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1380
    :goto_0
    return v0

    .line 1379
    :cond_0
    iget-object v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 1380
    :cond_1
    iget-object v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mEditor:Landroid/widget/Editor;

    iget v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPositionX:I

    iget v2, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mHotspotX:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPositionY:I

    iget v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mHandleNoShadowHeight:I

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mRatio:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/Editor;->isPositionVisibleWrap(II)Z

    move-result v0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    .line 1386
    iget-object v4, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mRatio:F

    mul-float/2addr v4, v5

    float-to-int v0, v4

    .line 1387
    .local v0, bottom:I
    iget-object v4, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Landroid/view/View;->mRight:I

    invoke-virtual {v4, v6, v6, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1388
    iget-object v4, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1389
    iget-object v4, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mDrawableMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 1390
    .local v3, markWidth:I
    iget v4, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v3

    div-int/lit8 v1, v4, 0x2

    .line 1391
    .local v1, markLeft:I
    add-int v2, v1, v3

    .line 1392
    .local v2, markRight:I
    iget-object v4, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mDrawableMark:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {v4, v1, v0, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1393
    iget-object v4, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mDrawableMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1394
    return-void
.end method

.method protected updateContainerSize()V
    .locals 5

    .prologue
    const/high16 v3, 0x3f80

    .line 1398
    iget-object v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    .line 1399
    .local v0, lineheight:I
    iget v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mLineHeight:I

    if-ne v1, v0, :cond_0

    .line 1408
    :goto_0
    return-void

    .line 1400
    :cond_0
    iput v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mLineHeight:I

    .line 1401
    iget v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mMinHandleRatio:F

    iget v2, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mMarkHeightMatchHandleHeight:I

    div-int v2, v0, v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mRatio:F

    .line 1402
    iget v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mRatio:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    iput v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mRatio:F

    .line 1403
    :cond_1
    iget-object v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mRatio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1404
    iget-object v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainer:Landroid/widget/PopupWindow;

    int-to-float v2, v0

    iget v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mHandleNoShadowHeight:I

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mRatio:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1405
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mHandleTypeOffset:I

    .line 1406
    iget-object v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mRatio:F

    mul-float/2addr v1, v2

    const v2, 0x3e99999a

    int-to-float v3, v0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mTouchOffsetY:F

    .line 1407
    const v1, 0x3f333333

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mIdealVerticalOffset:F

    goto :goto_0
.end method

.method public updatePosition(FF)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 1412
    iget-object v2, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    .line 1414
    .local v1, offset:I
    iget-object v2, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 1415
    .local v0, end:I
    if-lt v1, v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1416
    :cond_0
    invoke-virtual {p0, v1, v3}, Landroid/widget/NubiaCursorController$NubiaHandleView;->positionAtCursorOffset(IZ)V

    .line 1417
    return-void
.end method

.method protected updatePositionXY(IZ)V
    .locals 6
    .parameter "offset"
    .parameter "hasPositionChanged"

    .prologue
    .line 1421
    iget-object v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 1422
    .local v0, layout:Landroid/text/Layout;
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 1423
    .local v1, line:I
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    const/high16 v4, 0x3f00

    sub-float/2addr v3, v4

    iget v4, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mHotspotX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPositionX:I

    .line 1424
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    iget v4, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mHandleNoShadowHeight:I

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mRatio:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPositionY:I

    .line 1425
    iget v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPositionX:I

    iget-object v4, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPositionX:I

    .line 1426
    iget v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPositionY:I

    iget-object v4, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPositionY:I

    .line 1427
    if-eqz p2, :cond_0

    .line 1428
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 1429
    .local v2, location:[I
    iget-object v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1430
    const/4 v3, 0x0

    aget v3, v2, v3

    iget v4, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPositionX:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainerX:I

    .line 1431
    const/4 v3, 0x1

    aget v3, v2, v3

    iget v4, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPositionY:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainerY:I

    .line 1433
    .end local v2           #location:[I
    :cond_0
    return-void
.end method

.method public updateSelection(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 1436
    iget-object v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mEditor:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/Editor;->setTextSelectionWrap(II)V

    .line 1437
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->updateDrawable()V

    .line 1438
    return-void
.end method
