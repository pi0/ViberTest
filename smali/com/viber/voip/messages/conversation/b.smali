.class Lcom/viber/voip/messages/conversation/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/d/e;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/a;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/b;->a:Lcom/viber/voip/messages/conversation/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/b;->a:Lcom/viber/voip/messages/conversation/a;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a;->g()V

    .line 29
    return-void
.end method
