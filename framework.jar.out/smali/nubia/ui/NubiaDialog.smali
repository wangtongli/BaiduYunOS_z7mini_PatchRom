.class public Lnubia/ui/NubiaDialog;
.super Ljava/lang/Object;
.source "NubiaDialog.java"

# interfaces
.implements Lnubia/ui/IDialog;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lnubia/ui/NubiaDialog;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method public createDialogAnimation(Lcom/android/internal/app/AlertController;)V
    .locals 0
    .parameter "mAlert"

    .prologue
    .line 41
    invoke-virtual {p1}, Lcom/android/internal/app/AlertController;->createNubiaAnimation()V

    .line 42
    return-void
.end method

.method public getAlertDialogBackgroud(Landroid/content/res/TypedArray;II)I
    .locals 1
    .parameter "a"
    .parameter "styleId"
    .parameter "defaultId"

    .prologue
    .line 51
    const v0, 0x1080745

    return v0
.end method

.method public resetAlertDialogLayout()Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method public resetShowWindowAttributes(Landroid/view/Window;)V
    .locals 2
    .parameter "mWindow"

    .prologue
    .line 27
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 28
    .local v0, mParams:Landroid/view/WindowManager$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 29
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 30
    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 31
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 32
    return-void
.end method

.method public setBlankViewOnClickEvent()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public setCanceledOnTouchOutside(Lcom/android/internal/app/AlertController;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "mAlert"
    .parameter "flag"

    .prologue
    .line 36
    invoke-virtual {p1, p2}, Lcom/android/internal/app/AlertController;->setNubiaCanceledOnTouchOutside(Ljava/lang/Boolean;)V

    .line 37
    return-void
.end method

.method public setExitAnimation(Landroid/app/Activity;II)V
    .locals 0
    .parameter "actv"
    .parameter "enterAnim"
    .parameter "exitAnim"

    .prologue
    .line 56
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 57
    return-void
.end method
