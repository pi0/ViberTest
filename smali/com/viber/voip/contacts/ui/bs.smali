.class final Lcom/viber/voip/contacts/ui/bs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/Map;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/bs;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/viber/voip/contacts/ui/bs;->b:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bs;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/bs;->b:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    return-void
.end method
