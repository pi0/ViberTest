.class Lcom/viber/voip/messages/conversation/ui/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/viber/voip/messages/conversation/ui/m;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/m;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/y;->c:Lcom/viber/voip/messages/conversation/ui/m;

    iput-object p2, p0, Lcom/viber/voip/messages/conversation/ui/y;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/viber/voip/messages/conversation/ui/y;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 370
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/y;->c:Lcom/viber/voip/messages/conversation/ui/m;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/y;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/viber/voip/messages/conversation/ui/y;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/conversation/ui/m;->b(Ljava/lang/String;Z)V

    .line 371
    return-void
.end method
