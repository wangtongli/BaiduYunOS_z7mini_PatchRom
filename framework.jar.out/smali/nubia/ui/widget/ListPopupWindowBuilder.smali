.class public Lnubia/ui/widget/ListPopupWindowBuilder;
.super Ljava/lang/Object;
.source "ListPopupWindowBuilder.java"


# static fields
.field private static final ID_BEZIER_VIEW_BOTTOM:I = 0x15

.field private static final ID_BEZIER_VIEW_TOP:I = 0x14

.field public static final ID_CONTENT_CONTAINER:I = 0xa

.field public static final ID_DROPDOWN_VIEW:I = 0xb


# instance fields
.field private mBean:Lnubia/ui/widget/PopupWindowInfo;

.field private mBezierViewBottom:Lnubia/ui/widget/BezierView;

.field private mBezierViewParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mBezierViewTop:Lnubia/ui/widget/BezierView;

.field private mContentContainer:Landroid/widget/LinearLayout;

.field private mContentParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mContext:Landroid/content/Context;

.field private mDividerParam:Landroid/view/ViewGroup$LayoutParams;

.field private mDropDownViewParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mLastDivider:Landroid/view/View;

.field private mLastIsOnTop:Z

.field private mLinearBezierContainer:Landroid/widget/LinearLayout;

.field private mNubiaPWAnimation:Lnubia/ui/widget/ListPopupWindowAnimation;

.field private mShowBezierView:Lnubia/ui/widget/BezierView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mLastIsOnTop:Z

    .line 44
    iput-object p1, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method

.method private getMaxAvailableHeight(Landroid/view/View;IZLandroid/widget/PopupWindow;)I
    .locals 11
    .parameter "anchor"
    .parameter "yOffset"
    .parameter "ignoreBottomDecorations"
    .parameter "popup"

    .prologue
    const/4 v10, 0x1

    .line 272
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 273
    .local v2, displayFrame:Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 274
    const/4 v8, 0x2

    new-array v0, v8, [I

    .line 275
    .local v0, anchorPos:[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 276
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 277
    .local v1, bottomEdge:I
    if-eqz p3, :cond_0

    .line 278
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 279
    .local v5, res:Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v1, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 281
    .end local v5           #res:Landroid/content/res/Resources;
    :cond_0
    aget v8, v0, v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    sub-int v8, v1, v8

    sub-int v3, v8, p2

    .line 282
    .local v3, distanceToBottom:I
    aget v8, v0, v10

    iget v9, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    add-int v4, v8, p2

    .line 283
    .local v4, distanchToTop:I
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 284
    .local v6, returnedHeight:I
    invoke-virtual {p4}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 285
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 286
    .local v7, tempRect:Landroid/graphics/Rect;
    invoke-virtual {p4}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 287
    iget v8, v7, Landroid/graphics/Rect;->top:I

    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    sub-int/2addr v6, v8

    .line 289
    .end local v7           #tempRect:Landroid/graphics/Rect;
    :cond_1
    return v6
.end method

.method private initBezierContainer(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/PopupWindow;)V
    .locals 5
    .parameter "context"
    .parameter "dropDownView"
    .parameter "popup"

    .prologue
    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 73
    iget-object v2, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mLinearBezierContainer:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 99
    :goto_0
    return-void

    .line 74
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 75
    .local v0, bezierContainer:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 76
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    const v2, 0x1080744

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 79
    iput-object v0, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mLinearBezierContainer:Landroid/widget/LinearLayout;

    .line 80
    new-instance v2, Lnubia/ui/widget/ListPopupWindowBuilder$1;

    invoke-direct {v2, p0, p3}, Lnubia/ui/widget/ListPopupWindowBuilder$1;-><init>(Lnubia/ui/widget/ListPopupWindowBuilder;Landroid/widget/PopupWindow;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 87
    .local v1, contentContainer:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 88
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    iput-object v1, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mContentContainer:Landroid/widget/LinearLayout;

    .line 92
    new-instance v2, Lnubia/ui/widget/BezierView;

    invoke-direct {v2, p1}, Lnubia/ui/widget/BezierView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mBezierViewTop:Lnubia/ui/widget/BezierView;

    .line 93
    new-instance v2, Lnubia/ui/widget/BezierView;

    invoke-direct {v2, p1}, Lnubia/ui/widget/BezierView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mBezierViewBottom:Lnubia/ui/widget/BezierView;

    .line 94
    iget-object v2, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mBezierViewBottom:Lnubia/ui/widget/BezierView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lnubia/ui/widget/BezierView;->setShowOnTop(Z)V

    .line 96
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mLastDivider:Landroid/view/View;

    .line 97
    invoke-direct {p0}, Lnubia/ui/widget/ListPopupWindowBuilder;->initLayoutParams()V

    .line 98
    invoke-direct {p0, p2}, Lnubia/ui/widget/ListPopupWindowBuilder;->setViewId(Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method private initLayoutParams()V
    .locals 6

    .prologue
    const/4 v4, -0x2

    const/4 v5, -0x1

    .line 102
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 104
    .local v3, dropDownViewParams:Landroid/widget/LinearLayout$LayoutParams;
    iput-object v3, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mDropDownViewParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 106
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 108
    .local v1, contentParams:Landroid/widget/LinearLayout$LayoutParams;
    iput-object v1, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mContentParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 110
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mBezierViewBottom:Lnubia/ui/widget/BezierView;

    invoke-virtual {v4}, Lnubia/ui/widget/BezierView;->getBezierViewHeight()I

    move-result v4

    invoke-direct {v0, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 112
    .local v0, bezierViewParams:Landroid/widget/LinearLayout$LayoutParams;
    iput-object v0, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mBezierViewParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 114
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, 0x1

    invoke-direct {v2, v5, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 116
    .local v2, dividerParam:Landroid/view/ViewGroup$LayoutParams;
    iput-object v2, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mDividerParam:Landroid/view/ViewGroup$LayoutParams;

    .line 117
    return-void
.end method

.method private setContentView(Landroid/content/Context;Landroid/view/ViewGroup;Z)V
    .locals 6
    .parameter "context"
    .parameter "dropDownView"
    .parameter "onTop"

    .prologue
    const/4 v5, 0x0

    .line 127
    iget-object v2, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mLastDivider:Landroid/view/View;

    iget-object v3, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mDividerParam:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x1010214

    aput v3, v2, v5

    invoke-virtual {p1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 129
    .local v0, a:Landroid/content/res/TypedArray;
    iget-object v2, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mLastDivider:Landroid/view/View;

    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 130
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 131
    iget-object v2, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mContentContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mBezierViewTop:Lnubia/ui/widget/BezierView;

    iget-object v4, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mBezierViewParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    iget-object v2, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mDropDownViewParams:Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-virtual {v2, v5, v3, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 133
    iget-object v2, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mContentContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mDropDownViewParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, p2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    iget-object v2, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mContentContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mLastDivider:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 135
    iget-object v2, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mContentContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mBezierViewBottom:Lnubia/ui/widget/BezierView;

    iget-object v4, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mBezierViewParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    if-eqz p3, :cond_0

    const/16 v1, 0x50

    .line 137
    .local v1, gravity:I
    :goto_0
    iget-object v2, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mLinearBezierContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 138
    iget-object v2, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mLinearBezierContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mContentContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mContentParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    return-void

    .line 136
    .end local v1           #gravity:I
    :cond_0
    const/16 v1, 0x30

    goto :goto_0
.end method

.method private setViewId(Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "dropDownView"

    .prologue
    .line 120
    iget-object v0, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mContentContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 121
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 122
    iget-object v0, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mBezierViewTop:Lnubia/ui/widget/BezierView;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 123
    iget-object v0, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mBezierViewBottom:Lnubia/ui/widget/BezierView;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 124
    return-void
.end method


# virtual methods
.method public createNubiaContentView(ZLandroid/view/ViewGroup;Landroid/widget/PopupWindow;)V
    .locals 3
    .parameter "isOnTop"
    .parameter "dropDownView"
    .parameter "popup"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 48
    iget-object v0, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2, p3}, Lnubia/ui/widget/ListPopupWindowBuilder;->initBezierContainer(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/PopupWindow;)V

    .line 49
    iget-object v0, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2, p1}, Lnubia/ui/widget/ListPopupWindowBuilder;->setContentView(Landroid/content/Context;Landroid/view/ViewGroup;Z)V

    .line 50
    if-eqz p1, :cond_0

    .line 51
    iget-object v0, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mBezierViewTop:Lnubia/ui/widget/BezierView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mBezierViewBottom:Lnubia/ui/widget/BezierView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mLastDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mBezierViewTop:Lnubia/ui/widget/BezierView;

    iput-object v0, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mShowBezierView:Lnubia/ui/widget/BezierView;

    .line 61
    :goto_0
    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 63
    iget-object v0, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mNubiaPWAnimation:Lnubia/ui/widget/ListPopupWindowAnimation;

    if-nez v0, :cond_1

    .line 64
    new-instance v0, Lnubia/ui/widget/ListPopupWindowAnimation;

    iget-object v1, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mContentContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mShowBezierView:Lnubia/ui/widget/BezierView;

    invoke-direct {v0, v1, v2}, Lnubia/ui/widget/ListPopupWindowAnimation;-><init>(Landroid/view/View;Lnubia/ui/widget/BezierView;)V

    iput-object v0, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mNubiaPWAnimation:Lnubia/ui/widget/ListPopupWindowAnimation;

    .line 68
    :goto_1
    iget-object v0, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mLinearBezierContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 69
    iput-boolean p1, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mLastIsOnTop:Z

    .line 70
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mBezierViewTop:Lnubia/ui/widget/BezierView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mBezierViewBottom:Lnubia/ui/widget/BezierView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mLastDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mBezierViewBottom:Lnubia/ui/widget/BezierView;

    iput-object v0, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mShowBezierView:Lnubia/ui/widget/BezierView;

    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mNubiaPWAnimation:Lnubia/ui/widget/ListPopupWindowAnimation;

    iget-object v1, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mContentContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mShowBezierView:Lnubia/ui/widget/BezierView;

    invoke-virtual {v0, v1, v2}, Lnubia/ui/widget/ListPopupWindowAnimation;->setContentViewAndBezierView(Landroid/view/View;Lnubia/ui/widget/BezierView;)V

    goto :goto_1
.end method

.method public getAnimation()Lnubia/ui/widget/ListPopupWindowAnimation;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mNubiaPWAnimation:Lnubia/ui/widget/ListPopupWindowAnimation;

    return-object v0
.end method

.method public getBezierViewHeight()I
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mBezierViewBottom:Lnubia/ui/widget/BezierView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mBezierViewBottom:Lnubia/ui/widget/BezierView;

    invoke-virtual {v0}, Lnubia/ui/widget/BezierView;->getBezierViewHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPopupWindowInfo(Landroid/view/View;ILandroid/widget/PopupWindow;)Lnubia/ui/widget/PopupWindowInfo;
    .locals 17
    .parameter "anchor"
    .parameter "yOffset"
    .parameter "popup"

    .prologue
    .line 192
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 193
    .local v4, displayFrame:Landroid/graphics/Rect;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 194
    const/4 v14, 0x2

    new-array v1, v14, [I

    .line 195
    .local v1, anchorPos:[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 196
    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 197
    .local v2, bottomEdge:I
    iget v13, v4, Landroid/graphics/Rect;->top:I

    .line 198
    .local v13, topEdge:I
    sget-boolean v14, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v14, :cond_0

    .line 199
    invoke-static {}, Landroid/content/SmartShowContext;->getInstance()Landroid/content/ISmartShowContext;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/ISmartShowContext;->getStackBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 200
    .local v3, bounds:Landroid/graphics/Rect;
    if-eqz v3, :cond_0

    .line 201
    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 202
    iget v13, v3, Landroid/graphics/Rect;->top:I

    .line 205
    .end local v3           #bounds:Landroid/graphics/Rect;
    :cond_0
    const/4 v14, 0x1

    aget v14, v1, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v15

    add-int/2addr v14, v15

    sub-int v14, v2, v14

    sub-int v5, v14, p2

    .line 206
    .local v5, distanceToBottom:I
    if-gez v5, :cond_1

    .line 207
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v10

    .line 208
    .local v10, scrollX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v11

    .line 209
    .local v11, scrollY:I
    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v15

    add-int/2addr v15, v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v16

    add-int v15, v15, v16

    add-int v15, v15, p2

    invoke-direct {v8, v10, v11, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 211
    .local v8, r:Landroid/graphics/Rect;
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v14}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 212
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 214
    .end local v8           #r:Landroid/graphics/Rect;
    .end local v10           #scrollX:I
    .end local v11           #scrollY:I
    :cond_1
    const/4 v14, 0x1

    aget v14, v1, v14

    sub-int/2addr v14, v13

    add-int v6, v14, p2

    .line 215
    .local v6, distanchToTop:I
    if-le v6, v5, :cond_3

    const/4 v7, 0x1

    .line 216
    .local v7, onTop:Z
    :goto_0
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 217
    .local v9, returnedHeight:I
    invoke-virtual/range {p3 .. p3}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 218
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 219
    .local v12, tempRect:Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v14, v12}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 220
    iget v14, v12, Landroid/graphics/Rect;->top:I

    iget v15, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v14, v15

    sub-int/2addr v9, v14

    .line 222
    .end local v12           #tempRect:Landroid/graphics/Rect;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lnubia/ui/widget/ListPopupWindowBuilder;->mBean:Lnubia/ui/widget/PopupWindowInfo;

    if-nez v14, :cond_4

    .line 223
    new-instance v14, Lnubia/ui/widget/PopupWindowInfo;

    invoke-direct {v14, v7, v9}, Lnubia/ui/widget/PopupWindowInfo;-><init>(ZI)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lnubia/ui/widget/ListPopupWindowBuilder;->mBean:Lnubia/ui/widget/PopupWindowInfo;

    .line 226
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lnubia/ui/widget/ListPopupWindowBuilder;->mBean:Lnubia/ui/widget/PopupWindowInfo;

    return-object v14

    .line 215
    .end local v7           #onTop:Z
    .end local v9           #returnedHeight:I
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 225
    .restart local v7       #onTop:Z
    .restart local v9       #returnedHeight:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lnubia/ui/widget/ListPopupWindowBuilder;->mBean:Lnubia/ui/widget/PopupWindowInfo;

    invoke-virtual {v14, v7, v9}, Lnubia/ui/widget/PopupWindowInfo;->setBeanParams(ZI)V

    goto :goto_1
.end method

.method public getPopupWindowInfo2(Landroid/view/View;II)Lnubia/ui/widget/PopupWindowInfo;
    .locals 12
    .parameter "anchor"
    .parameter "yoff"
    .parameter "popupHeight"

    .prologue
    .line 230
    const/4 v3, 0x0

    .line 231
    .local v3, onTop:Z
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 232
    .local v0, anchorHeight:I
    const/4 v9, 0x2

    new-array v5, v9, [I

    .line 233
    .local v5, screenLocation:[I
    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 234
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 235
    .local v1, displayFrame:Landroid/graphics/Rect;
    invoke-virtual {p1, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 236
    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    const/4 v10, 0x1

    aget v10, v5, v10

    sub-int/2addr v9, v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    sub-int/2addr v9, v10

    sub-int v2, v9, p2

    .line 237
    .local v2, height:I
    const/4 v9, 0x1

    aget v9, v5, v9

    add-int/2addr v9, v0

    add-int v6, v9, p2

    .line 238
    .local v6, screenY:I
    add-int v9, v6, p3

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    if-le v9, v10, :cond_0

    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v7

    .line 240
    .local v7, scrollX:I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v8

    .line 241
    .local v8, scrollY:I
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    add-int v10, v8, p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v10, p2

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 244
    .local v4, r:Landroid/graphics/Rect;
    const/4 v9, 0x1

    invoke-virtual {p1, v4, v9}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 245
    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 246
    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    const/4 v10, 0x1

    aget v10, v5, v10

    sub-int/2addr v9, v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    sub-int/2addr v9, v10

    sub-int v2, v9, p2

    .line 247
    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    const/4 v10, 0x1

    aget v10, v5, v10

    sub-int/2addr v9, v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    sub-int/2addr v9, v10

    sub-int/2addr v9, p2

    const/4 v10, 0x1

    aget v10, v5, v10

    sub-int/2addr v10, p2

    iget v11, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    if-ge v9, v10, :cond_1

    const/4 v3, 0x1

    .line 250
    :goto_0
    if-eqz v3, :cond_0

    .line 251
    const/4 v9, 0x1

    aget v9, v5, v9

    sub-int/2addr v9, p2

    iget v10, v1, Landroid/graphics/Rect;->top:I

    sub-int v2, v9, v10

    .line 254
    .end local v4           #r:Landroid/graphics/Rect;
    .end local v7           #scrollX:I
    .end local v8           #scrollY:I
    :cond_0
    iget-object v9, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mBean:Lnubia/ui/widget/PopupWindowInfo;

    if-nez v9, :cond_2

    .line 255
    new-instance v9, Lnubia/ui/widget/PopupWindowInfo;

    invoke-direct {v9, v3, v2}, Lnubia/ui/widget/PopupWindowInfo;-><init>(ZI)V

    iput-object v9, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mBean:Lnubia/ui/widget/PopupWindowInfo;

    .line 259
    :goto_1
    iget-object v9, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mBean:Lnubia/ui/widget/PopupWindowInfo;

    return-object v9

    .line 247
    .restart local v4       #r:Landroid/graphics/Rect;
    .restart local v7       #scrollX:I
    .restart local v8       #scrollY:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 257
    .end local v4           #r:Landroid/graphics/Rect;
    .end local v7           #scrollX:I
    .end local v8           #scrollY:I
    :cond_2
    iget-object v9, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mBean:Lnubia/ui/widget/PopupWindowInfo;

    invoke-virtual {v9, v3, v2}, Lnubia/ui/widget/PopupWindowInfo;->setBeanParams(ZI)V

    goto :goto_1
.end method

.method public invalidateBezierView()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mShowBezierView:Lnubia/ui/widget/BezierView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mShowBezierView:Lnubia/ui/widget/BezierView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 143
    :cond_0
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mNubiaPWAnimation:Lnubia/ui/widget/ListPopupWindowAnimation;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mNubiaPWAnimation:Lnubia/ui/widget/ListPopupWindowAnimation;

    invoke-virtual {v0}, Lnubia/ui/widget/ListPopupWindowAnimation;->isRunning()Z

    move-result v0

    .line 184
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mNubiaPWAnimation:Lnubia/ui/widget/ListPopupWindowAnimation;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mNubiaPWAnimation:Lnubia/ui/widget/ListPopupWindowAnimation;

    invoke-virtual {v0}, Lnubia/ui/widget/ListPopupWindowAnimation;->stopAnimation()V

    .line 178
    :cond_0
    return-void
.end method

.method public updateNubiaContentView(Z)V
    .locals 4
    .parameter "onTop"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 146
    iget-boolean v1, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mLastIsOnTop:Z

    if-ne p1, v1, :cond_0

    .line 168
    :goto_0
    return-void

    .line 147
    :cond_0
    iput-boolean p1, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mLastIsOnTop:Z

    .line 148
    if-eqz p1, :cond_1

    .line 149
    iget-object v1, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mBezierViewTop:Lnubia/ui/widget/BezierView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v1, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mBezierViewBottom:Lnubia/ui/widget/BezierView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 151
    iget-object v1, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mLastDivider:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v1, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mBezierViewTop:Lnubia/ui/widget/BezierView;

    iput-object v1, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mShowBezierView:Lnubia/ui/widget/BezierView;

    .line 159
    :goto_1
    if-eqz p1, :cond_2

    const/16 v0, 0x50

    .line 160
    .local v0, gravity:I
    :goto_2
    iget-object v1, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mLinearBezierContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 161
    iget-object v1, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mLinearBezierContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 162
    iget-object v1, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mLinearBezierContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mContentContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mContentParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object v1, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mNubiaPWAnimation:Lnubia/ui/widget/ListPopupWindowAnimation;

    if-nez v1, :cond_3

    .line 164
    new-instance v1, Lnubia/ui/widget/ListPopupWindowAnimation;

    iget-object v2, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mContentContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mShowBezierView:Lnubia/ui/widget/BezierView;

    invoke-direct {v1, v2, v3}, Lnubia/ui/widget/ListPopupWindowAnimation;-><init>(Landroid/view/View;Lnubia/ui/widget/BezierView;)V

    iput-object v1, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mNubiaPWAnimation:Lnubia/ui/widget/ListPopupWindowAnimation;

    goto :goto_0

    .line 154
    .end local v0           #gravity:I
    :cond_1
    iget-object v1, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mBezierViewTop:Lnubia/ui/widget/BezierView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 155
    iget-object v1, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mBezierViewBottom:Lnubia/ui/widget/BezierView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object v1, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mLastDivider:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v1, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mBezierViewBottom:Lnubia/ui/widget/BezierView;

    iput-object v1, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mShowBezierView:Lnubia/ui/widget/BezierView;

    goto :goto_1

    .line 159
    :cond_2
    const/16 v0, 0x30

    goto :goto_2

    .line 166
    .restart local v0       #gravity:I
    :cond_3
    iget-object v1, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mNubiaPWAnimation:Lnubia/ui/widget/ListPopupWindowAnimation;

    iget-object v2, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mContentContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lnubia/ui/widget/ListPopupWindowBuilder;->mShowBezierView:Lnubia/ui/widget/BezierView;

    invoke-virtual {v1, v2, v3}, Lnubia/ui/widget/ListPopupWindowAnimation;->setContentViewAndBezierView(Landroid/view/View;Lnubia/ui/widget/BezierView;)V

    goto :goto_0
.end method
