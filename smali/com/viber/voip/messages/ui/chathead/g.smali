.class Lcom/viber/voip/messages/ui/chathead/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/chathead/b;

.field final synthetic b:Lcom/viber/voip/messages/ui/chathead/d;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 823
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/g;->b:Lcom/viber/voip/messages/ui/chathead/d;

    iput-object p2, p0, Lcom/viber/voip/messages/ui/chathead/g;->a:Lcom/viber/voip/messages/ui/chathead/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 826
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/g;->b:Lcom/viber/voip/messages/ui/chathead/d;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/g;->a:Lcom/viber/voip/messages/ui/chathead/b;

    invoke-static {v0, p2, v1}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/d;Landroid/view/MotionEvent;Lcom/viber/voip/messages/ui/chathead/b;)Z

    move-result v0

    return v0
.end method
