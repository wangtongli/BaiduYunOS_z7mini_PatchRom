.class Landroid/widget/Editor$PastePanelOnClickListener;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PastePanelOnClickListener"
.end annotation


# instance fields
.field private mController:Landroid/widget/NubiaCursorController;

.field private mMax:I

.field private mMin:I

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method constructor <init>(Landroid/widget/Editor;Landroid/widget/NubiaCursorController;II)V
    .locals 0
    .parameter
    .parameter "controller"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 4371
    iput-object p1, p0, Landroid/widget/Editor$PastePanelOnClickListener;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4372
    iput-object p2, p0, Landroid/widget/Editor$PastePanelOnClickListener;->mController:Landroid/widget/NubiaCursorController;

    .line 4373
    iput p4, p0, Landroid/widget/Editor$PastePanelOnClickListener;->mMax:I

    .line 4374
    iput p3, p0, Landroid/widget/Editor$PastePanelOnClickListener;->mMin:I

    .line 4375
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 4379
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 4380
    .local v0, tv:Landroid/widget/TextView;
    iget-object v1, p0, Landroid/widget/Editor$PastePanelOnClickListener;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$500(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    iget v2, p0, Landroid/widget/Editor$PastePanelOnClickListener;->mMin:I

    iget v3, p0, Landroid/widget/Editor$PastePanelOnClickListener;->mMax:I

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 4381
    iget-object v1, p0, Landroid/widget/Editor$PastePanelOnClickListener;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->stopTextSelectionMode()V

    .line 4382
    iget-object v1, p0, Landroid/widget/Editor$PastePanelOnClickListener;->mController:Landroid/widget/NubiaCursorController;

    check-cast v1, Landroid/widget/NubiaCursorController$InsertionPointCursorController;

    invoke-virtual {v1}, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->onClipBoardPancelClick()V

    .line 4383
    return-void
.end method
