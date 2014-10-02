.class Lcom/viber/voip/messages/controller/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/cz;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/controller/a/h;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/a/h;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/i;->a:Lcom/viber/voip/messages/controller/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Set;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/i;->a:Lcom/viber/voip/messages/controller/a/h;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/a/h;->a(Ljava/util/Set;)V

    .line 48
    return-void
.end method
