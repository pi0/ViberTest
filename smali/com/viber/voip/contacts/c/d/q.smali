.class Lcom/viber/voip/contacts/c/d/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/d/aq;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/d/m;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/d/m;)V
    .locals 0
    .parameter

    .prologue
    .line 404
    iput-object p1, p0, Lcom/viber/voip/contacts/c/d/q;->a:Lcom/viber/voip/contacts/c/d/m;

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
    .line 408
    new-instance v0, Lcom/viber/voip/contacts/c/d/r;

    invoke-direct {v0, p0}, Lcom/viber/voip/contacts/c/d/r;-><init>(Lcom/viber/voip/contacts/c/d/q;)V

    invoke-static {p1, v0}, Lcom/viber/voip/contacts/c/a;->a(Ljava/util/Map;Lcom/viber/voip/contacts/c/u;)V

    .line 415
    return-void
.end method
