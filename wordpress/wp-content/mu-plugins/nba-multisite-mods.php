<?php
/**
 * Plugin Name: NBA Multisite Mods
 * Description: Customizes the NBA Multisite Environment.
 * Version: 1.0.0
 */

/**
 * Sort My Sites Alphabetically
 *
 * Sorts the current user's "My Sites" list alphabetically.
 */
function nba_sort_my_sites_alphabetically($blogs)
{
    $anonymous = create_function('$a, $b', 'return strcasecmp($a->blogname, $b->blogname);');
    uasort($blogs, $anonymous);

    return $blogs;
}

add_filter('get_blogs_of_user','nba_sort_my_sites_alphabetically');

/**
 * Extend Allowed HTML
 *
 * Adds additional tags to the WordPress HTML tag whitelist.
 */
function nba_extend_allowed_html($allowed = array(), $context = null)
{
    $extend =
        array(
            'div' =>
                array(
                    'data-reveal',
                    'data-reveal-id',
                ),
            'iframe' =>
                array(
                    'class' => true,
                    'height' => true,
                    'id' => true,
                    'name' => true,
                    'seamless' => true,
                    'src' => true,
                    'style' => true,
                    'width' => true,
                ),
            'ul' => 
                array(
                    'data-accordion'
                )
        );

    foreach($extend as $key => $value)
    {
        if(isset($allowed[$key]) && is_array($allowed[$key]))
            $allowed[$key] = array_merge($allowed[$key], $value);
    }

    return $allowed;
}

add_filter('wp_kses_allowed_html', 'nba_extend_allowed_html', 10, 2);


function nba_filter_tiny_mce_before_init($options = array())
{
    if (!isset( $options['extended_valid_elements']))
    {
        $options['extended_valid_elements'] = '';
    }
    else
    {
        $options['extended_valid_elements'] .= ',';
    }
 
    if(!isset($options['custom_elements']))
    {
        $options['custom_elements'] = '';
    }
    else
    {
        $options['custom_elements'] .= ',';
    }
 
    $options['extended_valid_elements'] .= 'div[class|data|id|style]';
    $options['custom_elements']         .= 'div[class|data|id|style]';

    return $options;
}

add_filter('tiny_mce_before_init', 'nba_filter_tiny_mce_before_init');
