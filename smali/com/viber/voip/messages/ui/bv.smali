.class Lcom/viber/voip/messages/ui/bv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/viber/voip/messages/ui/bu;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/bu;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 524
    iput-object p1, p0, Lcom/viber/voip/messages/ui/bv;->b:Lcom/viber/voip/messages/ui/bu;

    iput p2, p0, Lcom/viber/voip/messages/ui/bv;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 528
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bv;->b:Lcom/viber/voip/messages/ui/bu;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/bu;->b:Lcom/viber/voip/messages/ui/bt;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/bt;->b:Lcom/viber/voip/messages/ui/MessageComposerView;

    iget v1, p0, Lcom/viber/voip/messages/ui/bv;->a:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/ui/MessageComposerView;->a(J)V

    .line 529
    return-void
.end method
