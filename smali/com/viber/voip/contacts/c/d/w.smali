.class Lcom/viber/voip/contacts/c/d/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/u;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/d/v;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/d/v;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/viber/voip/contacts/c/d/w;->a:Lcom/viber/voip/contacts/c/d/v;

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
    .line 242
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/w;->a:Lcom/viber/voip/contacts/c/d/v;

    iget-object v0, v0, Lcom/viber/voip/contacts/c/d/v;->b:Lcom/viber/voip/contacts/c/d/m;

    invoke-static {v0, p1}, Lcom/viber/voip/contacts/c/d/m;->a(Lcom/viber/voip/contacts/c/d/m;Ljava/util/Map;)V

    .line 243
    return-void
.end method
