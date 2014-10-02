.class synthetic Lcom/viber/svg/jni/svg_jni_render$1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $SwitchMap$com$viber$svg$jni$svg_jni_render$Opacity:[I

.field static final synthetic $SwitchMap$com$viber$svg$jni$svg_jni_render$PaintType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 470
    invoke-static {}, Lcom/viber/svg/jni/svg_jni_render$PaintType;->values()[Lcom/viber/svg/jni/svg_jni_render$PaintType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/viber/svg/jni/svg_jni_render$1;->$SwitchMap$com$viber$svg$jni$svg_jni_render$PaintType:[I

    :try_start_0
    sget-object v0, Lcom/viber/svg/jni/svg_jni_render$1;->$SwitchMap$com$viber$svg$jni$svg_jni_render$PaintType:[I

    sget-object v1, Lcom/viber/svg/jni/svg_jni_render$PaintType;->BOTH:Lcom/viber/svg/jni/svg_jni_render$PaintType;

    invoke-virtual {v1}, Lcom/viber/svg/jni/svg_jni_render$PaintType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v0, Lcom/viber/svg/jni/svg_jni_render$1;->$SwitchMap$com$viber$svg$jni$svg_jni_render$PaintType:[I

    sget-object v1, Lcom/viber/svg/jni/svg_jni_render$PaintType;->FILL:Lcom/viber/svg/jni/svg_jni_render$PaintType;

    invoke-virtual {v1}, Lcom/viber/svg/jni/svg_jni_render$PaintType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    :try_start_2
    sget-object v0, Lcom/viber/svg/jni/svg_jni_render$1;->$SwitchMap$com$viber$svg$jni$svg_jni_render$PaintType:[I

    sget-object v1, Lcom/viber/svg/jni/svg_jni_render$PaintType;->STROKE:Lcom/viber/svg/jni/svg_jni_render$PaintType;

    invoke-virtual {v1}, Lcom/viber/svg/jni/svg_jni_render$PaintType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    :try_start_3
    sget-object v0, Lcom/viber/svg/jni/svg_jni_render$1;->$SwitchMap$com$viber$svg$jni$svg_jni_render$PaintType:[I

    sget-object v1, Lcom/viber/svg/jni/svg_jni_render$PaintType;->NONE:Lcom/viber/svg/jni/svg_jni_render$PaintType;

    invoke-virtual {v1}, Lcom/viber/svg/jni/svg_jni_render$PaintType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    .line 108
    :goto_3
    invoke-static {}, Lcom/viber/svg/jni/svg_jni_render$Opacity;->values()[Lcom/viber/svg/jni/svg_jni_render$Opacity;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/viber/svg/jni/svg_jni_render$1;->$SwitchMap$com$viber$svg$jni$svg_jni_render$Opacity:[I

    :try_start_4
    sget-object v0, Lcom/viber/svg/jni/svg_jni_render$1;->$SwitchMap$com$viber$svg$jni$svg_jni_render$Opacity:[I

    sget-object v1, Lcom/viber/svg/jni/svg_jni_render$Opacity;->FILL:Lcom/viber/svg/jni/svg_jni_render$Opacity;

    invoke-virtual {v1}, Lcom/viber/svg/jni/svg_jni_render$Opacity;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    sget-object v0, Lcom/viber/svg/jni/svg_jni_render$1;->$SwitchMap$com$viber$svg$jni$svg_jni_render$Opacity:[I

    sget-object v1, Lcom/viber/svg/jni/svg_jni_render$Opacity;->STROKE:Lcom/viber/svg/jni/svg_jni_render$Opacity;

    invoke-virtual {v1}, Lcom/viber/svg/jni/svg_jni_render$Opacity;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v0, Lcom/viber/svg/jni/svg_jni_render$1;->$SwitchMap$com$viber$svg$jni$svg_jni_render$Opacity:[I

    sget-object v1, Lcom/viber/svg/jni/svg_jni_render$Opacity;->GROUP:Lcom/viber/svg/jni/svg_jni_render$Opacity;

    invoke-virtual {v1}, Lcom/viber/svg/jni/svg_jni_render$Opacity;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v0, Lcom/viber/svg/jni/svg_jni_render$1;->$SwitchMap$com$viber$svg$jni$svg_jni_render$Opacity:[I

    sget-object v1, Lcom/viber/svg/jni/svg_jni_render$Opacity;->ALL:Lcom/viber/svg/jni/svg_jni_render$Opacity;

    invoke-virtual {v1}, Lcom/viber/svg/jni/svg_jni_render$Opacity;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    return-void

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_4

    .line 470
    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_2

    :catch_6
    move-exception v0

    goto :goto_1

    :catch_7
    move-exception v0

    goto :goto_0
.end method
