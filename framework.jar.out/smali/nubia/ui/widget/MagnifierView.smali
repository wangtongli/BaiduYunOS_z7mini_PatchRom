.class public Lnubia/ui/widget/MagnifierView;
.super Landroid/view/View;
.source "MagnifierView.java"


# static fields
.field static final PADDING_LEFT:I = 0xb

.field static final PADDING_TOP:I = 0x2

.field private static sHeight:I

.field private static sRadius:I

.field private static sWidth:I


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mClipPath:Landroid/graphics/Path;

.field private mDstRect:Landroid/graphics/Rect;

.field private mMagnifierDrawable:Landroid/graphics/drawable/Drawable;

.field private mMagnifierMaskDrawable:Landroid/graphics/drawable/Drawable;

.field private mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mSrcRect:Landroid/graphics/Rect;

.field private mUpdateDrawingCache:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "anchorView"

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lnubia/ui/widget/MagnifierView;->initDrawable(Landroid/content/Context;)V

    .line 41
    invoke-direct {p0}, Lnubia/ui/widget/MagnifierView;->initPaintFlagsDrawFilter()V

    .line 42
    invoke-direct {p0}, Lnubia/ui/widget/MagnifierView;->initRect()V

    .line 43
    iput-object p1, p0, Lnubia/ui/widget/MagnifierView;->mAnchorView:Landroid/view/View;

    .line 44
    return-void
.end method

.method private static getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 132
    invoke-virtual {p0}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v3

    .line 133
    .local v3, willNotCache:Z
    invoke-virtual {p0, v4}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v0

    .line 135
    .local v0, bgColor:I
    invoke-virtual {p0, v4}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 136
    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 139
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    .line 140
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 141
    .local v2, cacheBitmap:Landroid/graphics/Bitmap;
    if-nez v2, :cond_1

    const/4 v1, 0x0

    .line 146
    :goto_0
    return-object v1

    .line 142
    :cond_1
    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 143
    .local v1, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 144
    invoke-virtual {p0, v3}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 145
    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method private initDrawable(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 48
    .local v0, resource:Landroid/content/res/Resources;
    const v1, 0x108046c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnubia/ui/widget/MagnifierView;->mMagnifierDrawable:Landroid/graphics/drawable/Drawable;

    .line 49
    const v1, 0x108046d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnubia/ui/widget/MagnifierView;->mMagnifierMaskDrawable:Landroid/graphics/drawable/Drawable;

    .line 50
    iget-object v1, p0, Lnubia/ui/widget/MagnifierView;->mMagnifierDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sput v1, Lnubia/ui/widget/MagnifierView;->sHeight:I

    .line 51
    iget-object v1, p0, Lnubia/ui/widget/MagnifierView;->mMagnifierDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sput v1, Lnubia/ui/widget/MagnifierView;->sWidth:I

    .line 52
    return-void
.end method

.method private initPaintFlagsDrawFilter()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lnubia/ui/widget/MagnifierView;->mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 56
    return-void
.end method

.method private initRect()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    sget v1, Lnubia/ui/widget/MagnifierView;->sWidth:I

    sget v2, Lnubia/ui/widget/MagnifierView;->sHeight:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lnubia/ui/widget/MagnifierView;->mDstRect:Landroid/graphics/Rect;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnubia/ui/widget/MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    .line 61
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lnubia/ui/widget/MagnifierView;->mClipPath:Landroid/graphics/Path;

    .line 62
    sget v0, Lnubia/ui/widget/MagnifierView;->sWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0xb

    sput v0, Lnubia/ui/widget/MagnifierView;->sRadius:I

    .line 63
    iget-object v0, p0, Lnubia/ui/widget/MagnifierView;->mClipPath:Landroid/graphics/Path;

    sget v1, Lnubia/ui/widget/MagnifierView;->sRadius:I

    add-int/lit8 v1, v1, 0xb

    int-to-float v1, v1

    sget v2, Lnubia/ui/widget/MagnifierView;->sRadius:I

    add-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget v3, Lnubia/ui/widget/MagnifierView;->sRadius:I

    int-to-float v3, v3

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 64
    return-void
.end method

.method private takeScreenShot()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lnubia/ui/widget/MagnifierView;->mAnchorView:Landroid/view/View;

    .line 116
    .local v0, view:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 117
    .local v1, viewParent:Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 118
    check-cast v0, Landroid/view/View;

    .line 119
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 121
    :cond_0
    invoke-static {v0}, Lnubia/ui/widget/MagnifierView;->getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public notifyUpdateDrawingCache()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnubia/ui/widget/MagnifierView;->mUpdateDrawingCache:Z

    .line 112
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 73
    iget-object v1, p0, Lnubia/ui/widget/MagnifierView;->mMagnifierDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lnubia/ui/widget/MagnifierView;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 74
    iget-object v1, p0, Lnubia/ui/widget/MagnifierView;->mMagnifierDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 75
    iget-object v1, p0, Lnubia/ui/widget/MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 76
    iget-object v1, p0, Lnubia/ui/widget/MagnifierView;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 77
    iget-boolean v1, p0, Lnubia/ui/widget/MagnifierView;->mUpdateDrawingCache:Z

    if-eqz v1, :cond_1

    .line 78
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnubia/ui/widget/MagnifierView;->mUpdateDrawingCache:Z

    .line 79
    iget-object v1, p0, Lnubia/ui/widget/MagnifierView;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 80
    iget-object v1, p0, Lnubia/ui/widget/MagnifierView;->mAnchorView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lnubia/ui/widget/MagnifierView;->mAnchorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 82
    :cond_0
    invoke-direct {p0}, Lnubia/ui/widget/MagnifierView;->takeScreenShot()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lnubia/ui/widget/MagnifierView;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 87
    :cond_1
    :goto_0
    iget-object v1, p0, Lnubia/ui/widget/MagnifierView;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 88
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 89
    .local v0, saveCount:I
    iget-object v1, p0, Lnubia/ui/widget/MagnifierView;->mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 90
    iget-object v1, p0, Lnubia/ui/widget/MagnifierView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 91
    iget-object v1, p0, Lnubia/ui/widget/MagnifierView;->mScreenBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lnubia/ui/widget/MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lnubia/ui/widget/MagnifierView;->mDstRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 92
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 95
    .end local v0           #saveCount:I
    :cond_2
    iget-object v1, p0, Lnubia/ui/widget/MagnifierView;->mMagnifierMaskDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lnubia/ui/widget/MagnifierView;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 96
    iget-object v1, p0, Lnubia/ui/widget/MagnifierView;->mMagnifierMaskDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 97
    return-void

    .line 85
    :cond_3
    invoke-direct {p0}, Lnubia/ui/widget/MagnifierView;->takeScreenShot()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lnubia/ui/widget/MagnifierView;->mScreenBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public onHide()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lnubia/ui/widget/MagnifierView;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/ui/widget/MagnifierView;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lnubia/ui/widget/MagnifierView;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/ui/widget/MagnifierView;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 129
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 68
    sget v0, Lnubia/ui/widget/MagnifierView;->sWidth:I

    sget v1, Lnubia/ui/widget/MagnifierView;->sHeight:I

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 69
    return-void
.end method

.method public setShowRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "srcRect"

    .prologue
    .line 107
    iget-object v0, p0, Lnubia/ui/widget/MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 108
    return-void
.end method

.method public viewHeight()I
    .locals 1

    .prologue
    .line 100
    sget v0, Lnubia/ui/widget/MagnifierView;->sHeight:I

    return v0
.end method

.method public viewWidth()I
    .locals 1

    .prologue
    .line 103
    sget v0, Lnubia/ui/widget/MagnifierView;->sWidth:I

    return v0
.end method
