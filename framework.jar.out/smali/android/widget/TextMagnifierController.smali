.class public Landroid/widget/TextMagnifierController;
.super Lnubia/ui/widget/MagnifierController;
.source "TextMagnifierController.java"


# instance fields
.field private final mEditor:Landroid/widget/Editor;

.field private mOffset:I

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;)V
    .locals 1
    .parameter "editor"

    .prologue
    .line 16
    invoke-virtual {p1}, Landroid/widget/Editor;->textview()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0}, Lnubia/ui/widget/MagnifierController;-><init>(Landroid/view/View;)V

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TextMagnifierController;->mOffset:I

    .line 17
    iput-object p1, p0, Landroid/widget/TextMagnifierController;->mEditor:Landroid/widget/Editor;

    .line 18
    invoke-virtual {p1}, Landroid/widget/Editor;->textview()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextMagnifierController;->mTextView:Landroid/widget/TextView;

    .line 19
    return-void
.end method

.method private initLongClickXY()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/widget/TextMagnifierController;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mLastDownPositionX:F

    float-to-int v0, v0

    iput v0, p0, Lnubia/ui/widget/MagnifierController;->mLongClickX:I

    .line 54
    iget-object v0, p0, Landroid/widget/TextMagnifierController;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mLastDownPositionY:F

    float-to-int v0, v0

    iput v0, p0, Lnubia/ui/widget/MagnifierController;->mLongClickY:I

    .line 55
    return-void
.end method


# virtual methods
.method public onHandleController(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 49
    iget-object v0, p0, Landroid/widget/TextMagnifierController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/NubiaCursorController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/NubiaCursorController;->onHandleTouchEvent(Landroid/widget/NubiaCursorController$NubiaHandleView;Landroid/view/MotionEvent;)Z

    .line 50
    return-void
.end method

.method public onPostHide()V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Landroid/widget/TextMagnifierController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->makeBlink()V

    .line 24
    return-void
.end method

.method public onPreShow()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Landroid/widget/TextMagnifierController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->stopBlink()V

    .line 29
    return-void
.end method

.method public onUpdatePosition(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    .line 33
    if-nez p1, :cond_1

    .line 34
    invoke-direct {p0}, Landroid/widget/TextMagnifierController;->initLongClickXY()V

    .line 35
    const/4 v1, 0x1

    .line 44
    :cond_0
    :goto_0
    return v1

    .line 37
    :cond_1
    const/4 v1, 0x0

    .line 38
    .local v1, update:Z
    iget-object v2, p0, Landroid/widget/TextMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 39
    .local v0, offset:I
    iget v2, p0, Landroid/widget/TextMagnifierController;->mOffset:I

    if-eq v0, v2, :cond_0

    .line 40
    iput v0, p0, Landroid/widget/TextMagnifierController;->mOffset:I

    .line 41
    iget-object v2, p0, Landroid/widget/TextMagnifierController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2, v0}, Landroid/widget/Editor;->setTextSelection(I)V

    .line 42
    const/4 v1, 0x1

    goto :goto_0
.end method
