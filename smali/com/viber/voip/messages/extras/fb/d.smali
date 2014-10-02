.class Lcom/viber/voip/messages/extras/fb/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/viber/voip/messages/extras/fb/d;->a:Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/d;->a:Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;->finish()V

    .line 42
    const/4 v0, 0x1

    return v0
.end method
