.class Lcom/viber/voip/contacts/c/d/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/u;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/d/q;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/d/q;)V
    .locals 0
    .parameter

    .prologue
    .line 408
    iput-object p1, p0, Lcom/viber/voip/contacts/c/d/r;->a:Lcom/viber/voip/contacts/c/d/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 412
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/r;->a:Lcom/viber/voip/contacts/c/d/q;

    iget-object v0, v0, Lcom/viber/voip/contacts/c/d/q;->a:Lcom/viber/voip/contacts/c/d/m;

    invoke-static {v0, p1}, Lcom/viber/voip/contacts/c/d/m;->a(Lcom/viber/voip/contacts/c/d/m;Ljava/util/Map;)V

    .line 413
    return-void
.end method
