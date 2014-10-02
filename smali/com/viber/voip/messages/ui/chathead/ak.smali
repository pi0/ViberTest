.class Lcom/viber/voip/messages/ui/chathead/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/viber/voip/messages/ui/chathead/d;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/chathead/d;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2755
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/ak;->b:Lcom/viber/voip/messages/ui/chathead/d;

    iput p2, p0, Lcom/viber/voip/messages/ui/chathead/ak;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2759
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/ak;->b:Lcom/viber/voip/messages/ui/chathead/d;

    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/ak;->a:I

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/chathead/d;->c(Lcom/viber/voip/messages/ui/chathead/d;I)V

    .line 2760
    return-void
.end method
