.class public Lnubia/ui/ProtoDialog;
.super Ljava/lang/Object;
.source "ProtoDialog.java"

# interfaces
.implements Lnubia/ui/IDialog;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lnubia/ui/ProtoDialog;->mContext:Landroid/content/Context;

    .line 15
    return-void
.end method


# virtual methods
.method public createDialogAnimation(Lcom/android/internal/app/AlertController;)V
    .locals 0
    .parameter "mAlert"

    .prologue
    .line 35
    return-void
.end method

.method public getAlertDialogBackgroud(Landroid/content/res/TypedArray;II)I
    .locals 1
    .parameter "a"
    .parameter "styleId"
    .parameter "defaultId"

    .prologue
    .line 44
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    return v0
.end method

.method public resetAlertDialogLayout()Z
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public resetShowWindowAttributes(Landroid/view/Window;)V
    .locals 0
    .parameter "mWindow"

    .prologue
    .line 25
    return-void
.end method

.method public setBlankViewOnClickEvent()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public setCanceledOnTouchOutside(Lcom/android/internal/app/AlertController;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "mAlert"
    .parameter "flag"

    .prologue
    .line 30
    return-void
.end method

.method public setExitAnimation(Landroid/app/Activity;II)V
    .locals 0
    .parameter "actv"
    .parameter "enterAnim"
    .parameter "exitAnim"

    .prologue
    .line 50
    return-void
.end method
