.class Lcom/viber/voip/gallery/selection/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/gallery/selection/b;


# instance fields
.field final synthetic a:Lcom/viber/voip/gallery/selection/ViberGalleryActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/gallery/selection/ViberGalleryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/viber/voip/gallery/selection/t;->a:Lcom/viber/voip/gallery/selection/ViberGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/t;->a:Lcom/viber/voip/gallery/selection/ViberGalleryActivity;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->supportInvalidateOptionsMenu()V

    .line 99
    return-void
.end method
